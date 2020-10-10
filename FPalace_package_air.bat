d:\code\AIRSDK_Compiler_2018\bin\adt -certificate -cn SelfSigned 2048-RSA selfCert.pfx password
d:\code\AIRSDK_Compiler_2018\bin\adt -package -storetype pkcs12 -keystore selfCert.pfx FPalace.air Main-app.xml Main.swf
