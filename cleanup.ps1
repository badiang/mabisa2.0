# Define the target folders
$folders = @("Admin", "api", "js", "css")

# Remove comments and writeLog() calls from PHP files
foreach ($folder in $folders) {
    Get-ChildItem -Path $folder -Filter "*.php" -Recurse | ForEach-Object {
        (Get-Content $_.FullName) -replace '(?m)^\s*//.*$', '' -replace '(?s)/\*.*?\*/', '' -replace 'writeLog\(.*?\);', '' | Set-Content $_.FullName
    }
}

# Remove comments from JavaScript files
foreach ($folder in $folders) {
    Get-ChildItem -Path $folder -Filter "*.js" -Recurse | ForEach-Object {
        (Get-Content $_.FullName) -replace '(?m)^\s*//.*$', '' -replace '(?s)/\*.*?\*/', '' | Set-Content $_.FullName
    }
}

# Install Terser globally
npm install -g terser

# Minify JavaScript files
foreach ($folder in $folders) {
    Get-ChildItem -Path $folder -Filter "*.js" -Recurse | ForEach-Object {
        terser $_.FullName --compress --mangle -o $_.FullName
    }
}

