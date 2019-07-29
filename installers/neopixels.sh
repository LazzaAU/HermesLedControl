#!/usr/bin/env bash
echo "######################### Neopixels installation ##########################"
echo "#################### Please run this script with sudo #####################"

USER=$(logname)

sed -i -e "\$acore_freq=250" /boot/config.txt
apt-get install scons
apt-get install swig

cd /home/${USER}
#git clone https://github.com/jgarff/rpi_ws281x.git
#cd rpi_ws281x
#scons
#cd python
#python3.5 setup.py install

pip3 install rpi-ws281x

echo "###################################### All done! #######################################"
echo "##################### Don't forget to turn on the SPI interface! #######################"