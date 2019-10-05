# Configuration Files

#### Vim
__add-string__ apply changes to all files. Reload files after apllying  
`./add-string -f [filename]`  
`./add-string -i `   

__reload-settings__ apply changes without input

#### KDE
|Function|Shortcut|
|:-------|:------:|
|Show Desktop| Meta + D|
|Workspace 1| Meta + 1|
|Workspace 2| Meta + 2|
|Toggle Flip Switch(Current Desktop)| Ctrl + H|

#### Other
> .config/touchpadxlibinputrc  
```bash 
[Elan Touchpad]
tapToClick=true
gesture swipe left xdotool key alt+Shift+Tab 
gesture swipe right xdotool key alt+Tab 
gesture swipe right 4 xdotool key ctrl+h
gesture swipe left 4 xdotool key ctrl+h
gesture swipe down 4 xdotool key super+d
```

> Tlp settings at: /etc/default/tlp  
```bash
START_CHARGE_THRESH_BAT0=40
STOP_CHARGE_THRESH_BAT0=80
```

#### Todo List
* [ ] 3-4 finger gestures
* [ ] Auto install vim packages
* [x] Fix Fn keys
* [ ] Missing modules
