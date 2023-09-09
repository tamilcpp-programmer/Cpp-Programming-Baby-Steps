Notepad++ Setup

Install NppExec
===============
* Plugins -> Plugin Admin - Search for NppExec (Need to restart the Nodepad++)
* Download the batch files "compile_npp.bat" & "execute_npp.bat" and save it in your directory

Create NppExec Scripts
======================
* Plugins -> NppExec -> Execute NppScript
* Create "Compile" Script and save it
        --- Compile Script ---
        npp_console 1
        npp_save
        cd "$(CURRENT_DIRECTORY)"
        // The below line is for windows terminal
        cmd /c wt.exe C:\<<<YOUR-PATH>>>\compile_npp.bat "$(FILE_NAME)"
        // For cmder - uncomment the below line and comment the windows terminal cmd line
        // cmd /c cmder.exe -- /cmd  "C:\<<<YOUR-PATH>>>\compile_npp.bat" "$(FILE_NAME)" 

* Create "Execute" Script and save it
        --- Execute Script ---
        npp_console 1
        npp_save
        cd "$(CURRENT_DIRECTORY)"
        // The below line is for windows terminal
        cmd /c wt.exe C:\<<<YOUR-PATH>>>\execute_npp.bat "$(FILE_NAME)"
        // For cmder - uncomment the below line and comment the windows terminal cmd line
        // cmd /c cmder.exe -- /cmd  "C:\<<<YOUR-PATH>>>\execute_npp.bat" "$(FILE_NAME)" 

* Replace "<<<YOUR-PATH>>>" with the path to the compile_npp.bat & execute_npp.bat files

Adding Shortcut
================
Settings -> Shortcut Mapper -> Plugin-commands Tab -> Search for "compile" and "execute" -> replace the shortcut key of your choice.
