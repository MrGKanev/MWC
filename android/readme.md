## Android (Samsung Galaxy S8+ - 9.0.0) version of MWC
Prerequisites
- ADB
- Patience
- Magisk Manager - its good to have it!

## Cleaning
Firstly we need to clean all the "important and cool apps"
1. Install ADB
2. Look at the uninstall.md or list.md in this folder. I have added which are save to remove and which I don't recommend. In uninstall.md you have the already done commands you can run in your terminal. In list.md you have more infotmation on which package with what is connected.
3. Open a terminal or CMD and write:
adb shell
pm uninstall -k --user 0 <package id>

Example: 
pm uninstall -k --user -0 com.sec.android.inputmethod - which is the keyboard. I use Swift.

Or you can try with https://play.google.com/store/apps/details?id=com.keramidas.TitaniumBackup, but you will need ROOT.

