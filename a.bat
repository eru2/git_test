@echo off
echo=======================================
echo [PROCESSING...] git pull
gut pull
echo [PROCESSING...} git add --all .
git add --all .
if [%1] EQU [] (
echo [PROCESSING..] git commit -m "Dev JAVA Web Project %data%-[%time:~5,0%]"
git commit -m "Dev JAVA Web Project %data%-[%time:~5,0%]"
) else (
echo [PROCESSING...] git commit -m %1
git commit -m %1
)
echo [PROCESSING...] git push
git push
echo=========================================
echo .
git push