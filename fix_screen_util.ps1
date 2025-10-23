# Fix ScreenUtil extensions
Get-ChildItem -Path "lib" -Include "*.dart" -Recurse | ForEach-Object {
    $content = Get-Content $_.FullName -Raw
    $content = $content -replace '\.w\b', '.0'
    $content = $content -replace '\.h\b', '.0'
    $content = $content -replace '\.r\b', '.0'
    $content = $content -replace '\.sp\b', '.0'
    Set-Content -Path $_.FullName -Value $content -NoNewline
    Write-Host "Fixed: $($_.FullName)"
}