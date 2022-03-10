@ECHO OFF

:: Login for AWS S3. Note that the secret needs to be URL-encoded AND any percentages needs escaping(% => %%)!
SET accesskey={access key goes here!}
SET secret={secret goes here}
SET bucketname={name of bucket goes here}

:: WinSCP do not work (well) with relative paths, so we need the absolute position of this script.
:: We just grab it from the custom %0 operator with a bit of selectormagic. No need to change this!
SET localpath=%~dp0
 
:: Set directories defaults - These can be overwritten to other locations if needed, otherwise default is fine!
SET outgoingXML=%localpath%\outgoing
SET incoming1upPDF=%localpath%\incoming\1up-pdf
SET incoming1upThumbnail=%localpath%\incoming\1up-thumbnail
SET incomingSRPDF=%localpath%\incoming\sr-pdf

::
:: ! Nothing needs changing below this line !
:: 

:: Temp directory for outgoing to avoid any raceconditions
SET outgoingXMLTemp=%outgoingXML%\temp

:: Get the datepart of the current local system time for logfile naming. This is the first 8 chars of the localdatetime
for /f "tokens=2 delims==" %%a in ('wmic OS Get localdatetime /value') do set "dt=%%a"
set "datestamp=%dt:~0,8%"

:: Ensure all directories are there before we start using them
if not exist %outgoingXMLTemp% mkdir %outgoingXMLTemp%
if not exist %incoming1upPDF% mkdir %incoming1upPDF%
if not exist %incoming1upThumbnail% mkdir %incoming1upThumbnail%
if not exist %incomingSRPDF% mkdir %incomingSRPDF%
if not exist %localpath%\logs mkdir %localpath%\logs

:: WinSCP does not handle transfers transactional, so to avoid race conditions use temporary directories
if exist %outgoingXML%\*.xml move %outgoingXML%\*.xml %outgoingXMLTemp%\

:: Run WinSCP to transfer files back and forth
%localpath%\bin\WinSCP.com /script=%localpath%\labelhub-script.txt >> %localpath%\logs\labelhub-sync-%datestamp%.log

:: Cleanup of temporary directory
del /F /Q %outgoingXMLTemp%\*.*
rmdir %outgoingXMLTemp%