@echo off
setlocal enableDelayedExpansion
for /D %%s in (.\*) do (
  for %%F in (%%s\*.txt) do (
    set "name=%%F"
    FOR /F "tokens=1,2 delims==" %%x in (vv.txt) DO (
      set "on=%%x"
      set "nn=%%y"
      if "!name!" == "!on!" (
        ren "!name!" "!nn!"
      )
    )
  )
)
