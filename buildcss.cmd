@echo off

set styles=default default_themed amelia cerulean cosmo cyborg flatly journal readable slate spacelab yeti

FOR %%A IN (%styles%) DO (
   echo creating css\bootstrap_%%A.css
   call lessc src\less\styles\%%A\styles.less css\bootstrap_%%A.css
)