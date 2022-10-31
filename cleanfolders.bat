@echo off

rem organizes files into individual folders 

for %%a in (".\*") do {
    if "%%~xa" NEQ "" if "%%~dpxa" NEQ "%~dpx0" (
        rem creates new folder if folder doesn't exist
        if not exist "%%~xa" mkdir "%%~xa"
        rem moves each file into folder
        move "%%a" "%%~dpa%%~xa\"
    )
}