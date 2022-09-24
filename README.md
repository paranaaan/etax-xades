# Xades - Ready to use (Local)

This repository is Xades signature sign and verification sample code for Thailand etax invoice

### Feature support

- Sign multiple file with in target directory
- Archive all targeted directory
- Support prefix signed file

### Require
- Java JRE8 (java 8 for higher)
- Windows OS (if not, can be any that support JAVA but no execution provided yet.)

### How to use
1. Change 3 variables value in **run.bat** file

````
set JAVA_TARGET=C:\Program Files\Java\jdk1.8.0_111\bin\java.exe
set CONFIG_FILE="ABSOLUTE PATH to config file"
set JAR_TARGET=xades-ready-to-use-jar-with-dependencies.jar
...
````
2. Update value in configuration file.
3. double-click **run.bat**

### Configuration file

<table>
  <tr>
    <td>Property</td>
    <td>Meaning</td>
    <td>Example</td>
  </tr>
  <tr>
    <td>SIGN_INPUT_PATH</td>
    <td>Input directory</td>
    <td>C:\temp\in</td>
  </tr>
  <tr>
    <td>SIGN_OUTPUT_PATH</td>
    <td>Output directory</td>
    <td>C:\temp\out</td>
  </tr>
  <tr>
    <td>SIGN_ARCHIVE_PATH</td>
    <td>Archive directory (leave it blank for you don't need to archive)</td>
    <td>C:\temp\archive</td>
  </tr>
  <tr>
    <td>SIGNED_PREFIX</td>
    <td>Prefix name for signed filename (leave it blank for you don't want filename change)</td>
    <td>signed-</td>
  </tr>
  <tr>
    <td>PK_TYPE</td>
    <td>Cryptography Standards selection</td>
    <td>PKCS12</td>
  </tr>
  <tr>
    <td colspan="2"></td>
    <td>PKCS11</td>
  </tr>
  <tr>
    <td colspan="3">#PKCS11 PARAMETER</td>
  </tr>
  <tr>
    <td>PKCS11_LIB_PATH</td>
    <td>Target PKCS11</td>
    <td>C:\windows\system32\eTPKCS11.dll</td>
  </tr>
  <tr>
    <td colspan="2" rowspan="2"></td>
    <td>/usr/local/lib/libeTPkcs11.dylib</td>
  </tr>
  <tr>
    <td>/usr/lib/opensc-pkcs11.so</td>
  </tr>
  <tr>
    <td>PKCS11_PROVIDER_NAME</td>
    <td>Provider's name</td>
    <td>eToken</td>
  </tr>
  <tr>
    <td>PKCS11_SLOT_ID</td>
    <td>Slot of targeted certificate</td>
    <td>0</td>
  </tr>
  <tr>
    <td>PKCS11_PASSWORD</td>
    <td>password for targeted certificate</td>
    <td>P@ssw0rd</td>
  </tr>
  <tr>
    <td colspan="3">Note: you can find Provider name and slot ID in Driver's application or programatic way at https://docs.oracle.com/javase/8/docs/technotes/guides/security/p11guide.html#TroubleShoot</td>
  </tr>
  <tr>
    <td colspan="3">#PKCS12 PARAMETER</td>
  </tr>
  <tr>
    <td>PKCS12_PATH</td>
    <td>Location of targeted certificate</td>
    <td>./key.p12</td>
  </tr>
  <tr>
    <td>PKCS12_PASSWORD</td>
    <td>password for targeted certificate</td>
    <td>password</td>
  </tr>
  <tr>
    <td colspan="3">#XAdES-BES VERIFICATION PARAMETER - this section is for receiver, unnecessary to focusing.</td>
  </tr>
  <tr>
    <td colspan="3">...</td>
  </tr>
</table>