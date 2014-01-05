@echo off

set styles=default default_themed amelia cerulean cosmo cyborg flatly journal readable slate spacelab yeti

IF NOT EXIST output MD output

FOR %%A IN (%styles%) DO (
    rem asciidoctor -T ..\src\templates -a source-highlighter="coderay" -a linkcss  -a icons="font" -a stylesheet="../../css/bootstrap_%%A.css" -o output\userguide_%%A.html userguide.adoc
	rem asciidoctor -T ..\src\templates -a source-highlighter="coderay" -a linkcss  -a icons="font" -a stylesheet="../../css/bootstrap_%%A.css" -o output\test_%%A.html test.adoc
	
	asciidoctor -a stylesheet="../css/bootstrap_%%A.css" -o output\userguide_%%A.html userguide.adoc
	asciidoctor -a stylesheet="../css/bootstrap_%%A.css" -o output\test_%%A.html test.adoc
)
