@echo off

set styles=default default_themed cerulean cosmo custom cyborg darkly flatly journal lumen paper readable sandstone simplex slate spacelab superhero united yeti

FOR %%A IN (%styles%) DO (
   echo creating css\bootstrap_%%A.css
   REM current lessc produces some warnings due to a bug. -s silences this
   call lessc -s --global-var="bsw-root='https://raw.githubusercontent.com/thomaspark/bootswatch/v3.3.7'" src\less\styles\%%A\styles.less css\bootstrap_%%A.css
   call cleancss -o css\bootstrap_%%A.min.css css\bootstrap_%%A.css
)
