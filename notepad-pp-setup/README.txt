Notepad++

--- Compile Script ---
npp_console 1
npp_save
cd "$(CURRENT_DIRECTORY)"
cmd /c wt.exe C:\JulietR\Programs\Compile\compile_npp.bat "$(FILE_NAME)"

--- Execute Script ---
npp_console 1
npp_save
cd "$(CURRENT_DIRECTORY)"
cmd /c wt.exe C:\JulietR\Programs\Compile\execute_npp.bat "$(FILE_NAME)"
