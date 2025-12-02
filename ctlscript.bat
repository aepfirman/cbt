@echo off
rem START or STOP Services
rem ----------------------------------
rem Check if argument is STOP or START

if not ""%1"" == ""START"" goto stop

if exist D:\CDS\hypersonic\scripts\ctl.bat (start /MIN /B D:\CDS\server\hsql-sample-database\scripts\ctl.bat START)
if exist D:\CDS\ingres\scripts\ctl.bat (start /MIN /B D:\CDS\ingres\scripts\ctl.bat START)
if exist D:\CDS\mysql\scripts\ctl.bat (start /MIN /B D:\CDS\mysql\scripts\ctl.bat START)
if exist D:\CDS\postgresql\scripts\ctl.bat (start /MIN /B D:\CDS\postgresql\scripts\ctl.bat START)
if exist D:\CDS\apache\scripts\ctl.bat (start /MIN /B D:\CDS\apache\scripts\ctl.bat START)
if exist D:\CDS\openoffice\scripts\ctl.bat (start /MIN /B D:\CDS\openoffice\scripts\ctl.bat START)
if exist D:\CDS\apache-tomcat\scripts\ctl.bat (start /MIN /B D:\CDS\apache-tomcat\scripts\ctl.bat START)
if exist D:\CDS\resin\scripts\ctl.bat (start /MIN /B D:\CDS\resin\scripts\ctl.bat START)
if exist D:\CDS\jboss\scripts\ctl.bat (start /MIN /B D:\CDS\jboss\scripts\ctl.bat START)
if exist D:\CDS\jetty\scripts\ctl.bat (start /MIN /B D:\CDS\jetty\scripts\ctl.bat START)
if exist D:\CDS\subversion\scripts\ctl.bat (start /MIN /B D:\CDS\subversion\scripts\ctl.bat START)
rem RUBY_APPLICATION_START
if exist D:\CDS\lucene\scripts\ctl.bat (start /MIN /B D:\CDS\lucene\scripts\ctl.bat START)
if exist D:\CDS\third_application\scripts\ctl.bat (start /MIN /B D:\CDS\third_application\scripts\ctl.bat START)
goto end

:stop
echo "Stopping services ..."
if exist D:\CDS\third_application\scripts\ctl.bat (start /MIN /B D:\CDS\third_application\scripts\ctl.bat STOP)
if exist D:\CDS\lucene\scripts\ctl.bat (start /MIN /B D:\CDS\lucene\scripts\ctl.bat STOP)
rem RUBY_APPLICATION_STOP
if exist D:\CDS\subversion\scripts\ctl.bat (start /MIN /B D:\CDS\subversion\scripts\ctl.bat STOP)
if exist D:\CDS\jetty\scripts\ctl.bat (start /MIN /B D:\CDS\jetty\scripts\ctl.bat STOP)
if exist D:\CDS\hypersonic\scripts\ctl.bat (start /MIN /B D:\CDS\server\hsql-sample-database\scripts\ctl.bat STOP)
if exist D:\CDS\jboss\scripts\ctl.bat (start /MIN /B D:\CDS\jboss\scripts\ctl.bat STOP)
if exist D:\CDS\resin\scripts\ctl.bat (start /MIN /B D:\CDS\resin\scripts\ctl.bat STOP)
if exist D:\CDS\apache-tomcat\scripts\ctl.bat (start /MIN /B /WAIT D:\CDS\apache-tomcat\scripts\ctl.bat STOP)
if exist D:\CDS\openoffice\scripts\ctl.bat (start /MIN /B D:\CDS\openoffice\scripts\ctl.bat STOP)
if exist D:\CDS\apache\scripts\ctl.bat (start /MIN /B D:\CDS\apache\scripts\ctl.bat STOP)
if exist D:\CDS\ingres\scripts\ctl.bat (start /MIN /B D:\CDS\ingres\scripts\ctl.bat STOP)
if exist D:\CDS\mysql\scripts\ctl.bat (start /MIN /B D:\CDS\mysql\scripts\ctl.bat STOP)
if exist D:\CDS\postgresql\scripts\ctl.bat (start /MIN /B D:\CDS\postgresql\scripts\ctl.bat STOP)

:end

