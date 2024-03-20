#screen -d -m autokey-qt # So that it does not spawn any window
#screen -d -m conky # and customizations if needed

echo "Setting some variables for you..."
export PATH=$PATH:$HOME/powertux_folder/bin
echo "[+] Powertux path ensured. Adding to PATH permanently..."
echo "PATH=$PATH:$HOME/powertux_folder/bin" > /etc/profile.d/powertux.sh
echo "[+] Powertux prerequisites ensured."


echo "[+] Powertux is now installed. You can now use the following commands to check the installation binaries:"
echo "ls -l $HOME/powertux_folder/bin | grep powertux"