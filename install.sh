# PCLISH - Python Command Line Shell
# Installation Script

rm -rf /home/$USER/.local/bin/pclish_dir/
sudo pip install pyinstaller
rm -rf /tmp/pclish
sudo rm -rf /home/$USER/.local/bin/pclish
sudo rm -rf /home/$USER/.local/bin/pclish_dir
git clone https://github.com/JaydenDev/pclish /tmp/pclish
mkdir /home/$USER/.local/bin/pclish_dir
pyinstaller /tmp/pclish/pclish.py --distpath=/tmp/pclish_dir
echo "If you said yes to deleting the output directory, you must re-run the installer and say no."
mv /tmp/pclish_dir/pclish /home/$USER/.local/bin/pclish_dir
ln -sf /home/$USER/.local/bin/pclish_dir/pclish/pclish /home/$USER/.local/bin/pclish
chmod +x /home/$USER/.local/bin/pclish