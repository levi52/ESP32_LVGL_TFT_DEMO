@echo off
setlocal enabledelayedexpansion

set "build_folder=%~dp0\esp32-s3-devkitc-1"

for /r "%build_folder%" %%f in (*) do (
    set "file_ext=%%~xf"
    if not "!file_ext!"==".bin" (
        del "%%f"
    )
)
for /d /r "%build_folder%" %%d in (*) do (
    rd /s /q "%%d"
)

endlocal