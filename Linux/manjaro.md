## Manjaro based version of MWC

### Running
If you want to run the setup.sh you need to download/fork it and change lines 35 and 36. (Git information)
1. Go to the folder where you downloaded the script
2. Open terminal and grand root privileges. 
3. Run "yay -S $(cat ~/Linux/manjaro/setup.txt)"


#### How to get the user installed packages?
This is if you have an Arch based system and want to get all the packages which were not installed from the installation of the system.
The command is: " pacman -Qqe | grep -v "$(awk '{print $1}' /desktopfs-pkgs.txt)" > ~/manjaro_installs.txt " and it will save a txt file with all the information