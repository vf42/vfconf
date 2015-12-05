%echo off
rem Windows version of installer.

for /d %%i in (*) do (
    IF NOT "%%~i" == ".git" IF NOT "%%~i" == ".dontinstall" (
        echo Installing %%~i
        rmdir "%UserProfile%\%%~i"
        mklink /d "%UserProfile%\%%~i" "%%~fi"
    )
)
rem On Windows, need to use Vimfiles for .vim
rmdir /s /q "%UserProfile%\vimfiles"
mklink /d "%UserProfile%\vimfiles" "%UserProfile%\.vim"

for %%i in (*) do (
    IF NOT "%%~i" == "install.bat" IF NOT "%%~i" == "install.sh" (
        echo Installing %%~i
        del "%UserProfile%\%%~i"
        mklink "%UserProfile%\%%~i" "%%~fi"
    )
)

