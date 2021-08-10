# Overview

Batch script to upload files/folders to Google Drive with logging and filtering enabled (both optional).

## Usage

This script assumes you have rclone installed by ***Chocolatey***. Otherwise you'll need to change the ***RCLONE_PATH*** to where your rclone.exe is.

If you want to use the default paths then create a folder called Scripts\Rclone on the OS root drive (C:) and extract the zip folder there (e.g C:\Scripts\Rclone). Otherwise you can extract it anywhere and change the variable ***DEFAULT_PATH*** inside the ***rclone-gdrive.bat*** file.

It's strongly recommended that you use your own client_id and client_secret to avoid potential issues with Google Drive. See the link below to learn more:

[Making your own client-id](https://rclone.org/drive/#making-your-own-client-id)

After everything is running smoothly you can create a scheduled task to make this script auto run in a given time (e.g Daily) 

## Logging

Logging is enabled by default and everytime the script is run it'll create a .log file inside the ***logs*** folder with the date/time it was run. If you don't want this just comment out the ***RCLONE_LOG*** variable inside the ***rclone-gdrive.bat*** file

## Filtering

You can use filters to include (+) or exclude (-) files/folders, this is done on the ***filters.txt*** file. If you want to learn more about filtering with advanced use cases, see the link below:

[Rclone filtering](https://rclone.org/filtering/)

In this script I use the ***--include-from*** flag to specify which files/folders I want to upload. I find this way better because by default rclone will copy everything on the [source] folder, even hidden files. Also this way prevents rclone to upload any new folder that isn't in the filters list.