%echo off
rem Windows version of installer.

for /d %%i in (*) do (
    IF NOT "%%~i" == ".git" (
        echo Installing %%~i
        rmdir "%UserProfile%\%%~i"
        mklink /d "%UserProfile%\%%~i" "%%~fi"
    )
)

for %%i in (*) do (
    IF NOT "%%~i" == "install.bat" IF NOT "%%~i" == "install.sh" (
        echo Installing %%~i
        del "%UserProfile%\%%~i"
        mklink "%UserProfile%\%%~i" "%%~fi"
    )
)

