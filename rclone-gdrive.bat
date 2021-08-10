@ECHO OFF

SET DATETIMEF=%date:~-4%_%date:~3,2%_%date:~0,2%__%time:~0,2%_%time:~3,2%_%time:~6,2%
SET DEFAULT_PATH=C:\Scripts\Rclone
SET RCLONE_PATH="C:\ProgramData\chocolatey\bin\rclone.exe"
SET RCLONE_FILTERS="%DEFAULT_PATH%\filters.txt"
SET RCLONE_LOG="%DEFAULT_PATH%\Logs\%DATETIMEF%.log"
SET RCLONE_CONFIG="%DEFAULT_PATH%\rclone.conf"

%RCLONE_PATH% copy -v [source] [destination] --include-from %RCLONE_FILTERS% --log-file %RCLONE_LOG% --config=%RCLONE_CONFIG%