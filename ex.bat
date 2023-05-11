@echo off

set source_folder=C:\path\to\source\folder
set destination_folder=C:\path\to\destination\folder

set /p new_source_folder=Enter new source folder (leave blank to use default): 
if not "%new_source_folder%"=="" set source_folder=%new_source_folder%

set /p new_destination_folder=Enter new destination folder (leave blank to use default): 
if not "%new_destination_folder%"=="" set destination_folder=%new_destination_folder%

xcopy "%source_folder%\*" "%destination_folder%" /s /i /y

echo Files have been moved from %source_folder% to %destination_folder%.

pause
