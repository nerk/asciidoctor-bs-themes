@echo off

set styles=default default_themed cerulean cosmo custom cyborg darkly flatly journal lumen paper readable sandstone simplex slate spacelab superhero united yeti

IF NOT EXIST output MD output
DEL /Q output\*

FOR %%A IN (%styles%) DO (
	rem asciidoctor -T ..\src\templates -a source-highlighter="coderay" -a linkcss  -a icons="font" -a stylesheet="../../css/bootstrap_%%A.css" -o output\test_%%A.html test.adoc
	
	asciidoctor -a stylesheet="../css/bootstrap_%%A.css" -o output\test_%%A.html test.adoc
)
