
echo "----------------------------------------------------"
echo "stage 1 - copy compressed files to /opt directory"
echo "----------------------------------------------------"

cp /temp/shared/java.tar.gz /opt
cp /temp/shared/maven.tar.gz /opt


echo "-------------------------------------"
echo "stage 2 - change directory to /opt"
echo "-------------------------------------"
cd /opt


echo "--------------------------"
echo "stage 3 - extract files"
echo "--------------------------"

sudo tar zxvf java.tar.gz
sudo tar xzvf maven.tar.gz


echo "-----------------------------"
echo "stage 4 - update alternatives"
echo "-----------------------------"

update-alternatives --install /usr/bin/java java /opt/jdk1.8.0_45/bin/java 100
update-alternatives --install /usr/bin/javac javac /opt/jdk1.8.0_45/bin/javac 100
sudo update-alternatives --install /usr/bin/mvn maven /opt/apache-maven-3.6.0/bin/mvn 1001


echo "------------------------------"
echo "stage 5 - check these versions"
echo "------------------------------"

java -version
javac -version
mvn -v


echo "------------------------------"
echo "stage 6 - install tree package"
echo "------------------------------"
sudo apt-get install tree -y


echo "---------------------------------------"
echo "stage 7 - install git and check version"
echo "---------------------------------------"
sudo apt-get install git -y
git --version


echo "------------------------------"
echo "stage 8 - get atom text editor"
echo "------------------------------"
curl -sL https://packagecloud.io/AtomEditor/atom/gpgkey | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main" > /etc/apt/sources.list.d/atom.list'
sudo apt-get update


echo "----------------------------"
echo "stage 9 - force install atom"
echo "----------------------------"
sudo apt-get install -y --force-yes atom


echo "----------------------------------"
echo "stage 10 - install shutter package"
echo "----------------------------------"
sudo apt-get install -y shutter