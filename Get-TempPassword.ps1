param (
	[Parameter()]
	[ValidateRange(1, 42)]
	[Int]$Passwords = 1
)

$Url = "https://dinopass.com/password/Strong"

for ($i = 0; $i -lt $Passwords; $i++) {
	$WebResponse = Invoke-WebRequest $Url -UseBasicParsing -ErrorAction Stop
	$WebResponse.Content
}
