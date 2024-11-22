
$username = "[sending email address]"
$password = "[password for email]"
$file_name =  Get-ChildItem [filepath of containing folder] | Where-Object {$_ -match (Get-Date -format ddMMyyyy)}
$sstr = ConvertTo-SecureString -string $password -AsPlainText -Force
$cred = New-Object System.Management.Automation.PSCredential -argumentlist $username, $sstr
$body = "[What you would like the email to say]"
$EmailSettings=@{
	SMTPServer="[smtp server url]"
	Credential=$cred
	From="[sending email address]"
	To="[email to send file to]"
	Subject="[what you want the subject to say]"
	Attachments=$file_name
	Body=$body
	Port=587
}
Send-MailMessage @EmailSettings -usessl -bodyashtml
