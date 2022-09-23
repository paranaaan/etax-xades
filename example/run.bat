@ECHO OFF
set JAVA_TARGET=java
set CONFIG_FILE=E:\workspaces\my-workspace\etax-xades\etax-xades\example\configuration.properties

call %JAVA_TARGET% -cp Xades-1.0.0-jar-with-dependencies.jar XadesBesSignMain %CONFIG_FILE%


@pause