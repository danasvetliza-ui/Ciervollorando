@echo off
echo Starting local web server for Flying Fairy Deer...
where node >nul 2>nul
if %errorlevel% equ 0 (
    echo Node.js detected. Running server via npx http-server...
    start http://localhost:8080
    npx -y http-server -p 8080
) else (
    where python >nul 2>nul
    if %errorlevel% equ 0 (
        echo Python detected. Running server via python -m http.server...
        start http://localhost:8080
        python -m http.server 8080
    ) else (
        echo No Node.js or Python detected. Opening index.html directly...
        start index.html
    )
)
