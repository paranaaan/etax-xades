@ECHO OFF
set JAVA_TARGET=C:\Program Files\Java\jdk1.8.0_111\bin\java.exe
set CONFIG_FILE=E:\workspaces\my-workspace\etax-xades\etax-xades\example\configuration.properties
set JAR_TARGET=xades-ready-to-use-jar-with-dependencies.jar

call %JAVA_TARGET% ^
-Djava.security.debug=sunpkcs11 ^
-Xms2048m ^
-Xmx2048m ^
 -cp xades-ready-to-use-jar-with-dependencies.jar XadesBesSignMain ^
 %CONFIG_FILE%

@pause