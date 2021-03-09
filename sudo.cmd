@echo off
@echo Set objShell = CreateObject("Shell.Application") > "%userprofile%\sudo.tmp.vbs"
@echo args = Right("%*", (Len("%*") - Len("%1"))) >> "%userprofile%\sudo.tmp.vbs"
@echo objShell.ShellExecute "%1", args, "", "runas" >> "%userprofile%\sudo.tmp.vbs"
@cscript "%userprofile%\sudo.tmp.vbs"
