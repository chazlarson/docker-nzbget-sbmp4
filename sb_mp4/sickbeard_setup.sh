echo -------------------------------------------
echo sickbeard_mp4_automator SETUP BEGINS  
echo -------------------------------------------

echo -------------------------------------------
echo CREATING /opt DIRECTORY               
echo -------------------------------------------
mkdir /opt
cd /opt

echo -------------------------------------------
echo RUNNING apk update                    
echo -------------------------------------------
apk update

echo -------------------------------------------
echo RUNNING apk add --update go git       
echo -------------------------------------------
apk add --update go git

echo -------------------------------------------
echo RUNNING apk add openssh               
echo -------------------------------------------
apk add openssh

echo -------------------------------------------
echo git clone sickbeard_mp4_automator
echo -------------------------------------------
git clone https://github.com/mdhiggins/sickbeard_mp4_automator.git

echo -------------------------------------------
echo retrieve preset settings
echo -------------------------------------------
cp /tmp/autoProcess.ini sickbeard_mp4_automator

echo -------------------------------------------
echo chmod a+w sickbeard_mp4_automator     
echo -------------------------------------------
chmod a+w sickbeard_mp4_automator

echo -------------------------------------------
echo RUNNING apk add py-setuptools         
echo -------------------------------------------
apk add py-setuptools

echo -------------------------------------------
echo RETRIEVING get-pip.py                 
echo -------------------------------------------
curl -f -O https://bootstrap.pypa.io/get-pip.py

echo -------------------------------------------
echo RUNNING python get-pip.py             
echo -------------------------------------------
python get-pip.py

echo -------------------------------------------
echo RUNNING apk add nano ffmpeg python-dev
echo                 musl-dev libffi-dev
echo                 openssl-dev
echo -------------------------------------------
apk add nano ffmpeg python-dev musl-dev libffi-dev openssl-dev

echo -------------------------------------------
echo RUNNING pip install requests          
echo -------------------------------------------
pip install requests

echo -------------------------------------------
echo RUNNING pip install requests[security]
echo -------------------------------------------
pip install requests[security]

echo -------------------------------------------
echo RUNNING pip install requests-cache    
echo -------------------------------------------
pip install requests-cache

echo -------------------------------------------
echo RUNNING pip install babelfish         
echo -------------------------------------------
pip install babelfish

echo -------------------------------------------
echo RUNNING pip install "guessit<2"      
echo -------------------------------------------
pip install "guessit<2"

echo -------------------------------------------
echo RUNNING pip install "subliminal<2"    
echo -------------------------------------------
pip install "subliminal<2"

echo -------------------------------------------
echo RUNNING pip install stevedore==1.19.1 
echo -------------------------------------------
pip install stevedore==1.19.1

echo -------------------------------------------
echo RUNNING pip install python-dateutil   
echo -------------------------------------------
pip install python-dateutil

echo -------------------------------------------
echo RUNNING pip install qtfaststart       
echo -------------------------------------------
pip install qtfaststart

chown -R root:root sickbeard_mp4_automator
chmod -R a+w sickbeard_mp4_automator

echo -------------------------------------------
echo sickbeard_mp4_automator SETUP COMPLETE
echo -------------------------------------------
