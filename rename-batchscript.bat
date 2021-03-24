@echo off
setlocal enableDelayedExpansion
for /D %%s in (.\*) do (
  for %%F in (%%s\*.txt) do (
    set "name=%%F"
    ren "!name!" "newname"
  )
)
