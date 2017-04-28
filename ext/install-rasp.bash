sh -c 'echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list'
apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116
apt-get update
apt-get install ros-indigo-ros-base
apt-get install ros-indigo-rosbridge-suite ros-indigo-rosserial-server
echo "source /opt/ros/indigo/setup.bash" >> .bashrc

apt-get install python-pip
pip install virtualenv
cd /opt/
virtualenv hbrain
cd hbrain/
source bin/activate
mkdir project
cd project/
apt-get install git
git clone https://github.com/dotbot-io/webapp
mv webapp/ hbrain_server
cd hbrain_server/
git checkout develop
pip install -r requirements.txt

apt-get install nginx avahi-daemon wireless-tools
