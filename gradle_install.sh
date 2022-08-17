#need java
mkdir /opt/gradle/
unzip -d /opt/gradle gradle-6.3-bin.zip
ls /opt/gradle/gradle-6.3
export PATH=$PATH:/opt/gradle/gradle-6.3/bin
echo 'export PATH=$PATH:/opt/gradle/gradle-6.3/bin'  >> ~/.bashrc
gradle -v