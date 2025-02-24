# Remove comments from PHP files
Get-ChildItem -Path . -Filter "*.php" -Recurse | ForEach-Object {
    (Get-Content $_.FullName) -replace '(?m)^\s*//.*$','' -replace '(?s)/\*.*?\*/' | Set-Content $_.FullName
}

# Remove comments and writeLog() from JavaScript files
Get-ChildItem -Path . -Filter "*.js" -Recurse | ForEach-Object {
    (Get-Content $_.FullName) -replace '(?m)^\s*//.*$','' -replace '(?s)/\*.*?\*/','' -replace 'writeLog\(.*?\);','' | Set-Content $_.FullName
}

# Install Terser globally
npm install -g terser

# Minify JavaScript files
Get-ChildItem -Path . -Filter "*.js" -Recurse | ForEach-Object {
    terser $_.FullName --compress --mangle -o $_.FullName
}
