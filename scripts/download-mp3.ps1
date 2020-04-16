param(
    [string] $url = "",
	[string] $urlFile = "",
	[string] $outputDir = ""
)

$StartDir = $pwd
$defaultOutputDir = "$PSScriptRoot\..\output"
[string[]] $urlArray = @()

. "$PSScriptRoot\utils.ps1"

# Process the input URLs
$urlFileSpecified = (Is-String-Empty $urlFile) -eq $false
if($urlFileSpecified) {
	$urlArray = Get-Content -Path "$urlFile"
}

$urlSpecified = (Is-String-Empty $url) -eq $false
if($urlSpecified) {
	echo "adding url to array"
	$urlArray += $url
}

# Process and create the output dir
if(Is-String-Empty($outputDir) -eq $true) {
    $outputDir = $defaultOutputDir
}
Create-Dir-If-Not-Exists($outputDir)
$outputDir = Resolve-Path $outputDir

foreach($currentUrl in $urlArray) {
    youtube-dl --extract-audio --audio-format mp3 --newline --add-metadata "$currentUrl" -o "$outputDir/%(title)s-%(id)s.%(ext)s"
}

