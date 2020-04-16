function Throw-If-Empty($value, $errorMessage) {
    if([string]::IsNullOrEmpty($value)) {
        throw $errorMessage
    }
}

function Get-Filename-From-Filepath($filepath) {
    return Split-Path $filepath -leaf
}

function Is-String-Empty($value) {
    if([string]::IsNullOrEmpty($value)) {
        return $true
    } else {
        return $false
    }
}

function Does-File-Exist($filepath) {
    if([System.IO.File]::Exists($filepath)) {
        return $true
    }
    return $false
}

function Create-Dir-If-Not-Exists($path) {
    New-Item -ItemType Directory -Force -Path $path | Out-Null
}

function Convert-Back-Slashes-To-Forward-Slashes($path) {
    $ret = $path.Replace("\", "/")
    return $ret
}

function Get-Json-Object-From-File($filepath) {
    return Get-Content -Raw -Path "$filepath" | ConvertFrom-Json
}

function Get-Current-Date-Time-String {
    return Get-Date -Format "yyyy-MM-dd_HH-mm-ss"
}