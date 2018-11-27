echo "start the process"
cp /temp/shared/
cp /temp/shared/java.tar.gz /opt


echo "copying a file to another place, I guess. - 2. step complete"
cd /opt

echo "extract it with tar - 3. step complete"
sudo tar zxvf java.tar.gz


echo "time to install it."
update-alternatives --install /usr/bin/java java /opt/jdk1.8.0_45/bin/java 100
update-alternatives --install /usr/bin/javac javac /opt/jdk1.8.0_45/bin/javac 100

apt-get install git -y