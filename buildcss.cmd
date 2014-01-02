@echo off

set styles=default cerulean cosmo cyborg flatly readable slate spacelab yeti

FOR %%A IN (%styles%) DO (
   echo creating css\bootstrap_%%A.css
   call lessc src\less\styles_%%A.less css\bootstrap_%%A.css
)