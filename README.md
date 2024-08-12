# Lenovo Duet post setup script for cadmium

## Hardware support:
### Note: (NF) means Not fully
| Hardware support matrix  	| Y/N  		| 
|-------------------------	|--------	|
| Internal Display	       	| Y		   	|
| Display autorotation    	| Y	    	|
| Local Install	          	| y  			|
| Bluetooth                 | y       |
| Touchscreen	    	  	    | Y		   	| 
| Pen Input		            	| Y			  |
| WiFi		     	         	  | Y		  	|
| 3D Acceleration	        	| Y		    | 
| GPU reclocking	         	| Y			  |
| Sleep                     | Y       |
| Display Rotation         	| Y  			|
| Audio		     	          	| NF			|
| Hardware video decoding  	| N	  		|
| KVM Virtualtization      	| N  			|
| External Display	      	| N		  	|
| Front + rear camera		   	| N  			|
| x11                       | N       |

### Installation
- Download [cadmium-arm64-debian.img.xz](https://github.com/Maccraft123/Cadmium/releases/tag/v0.4.0-pre2) and fallow the guide
- after running `./install` and setting up wifi click quit in the bottem right. note that it will fail (this is fine)
- run the fallowing command `apt install update && apt install full-upgrade` depending on your usb speed this may take a while
- run `./install` again and when on the wifi page click quit
- once you hit `one of: gnome kde phosh sway or none?` type in `none`
- it will now run finnish installing. once you see `done!` type `reboot` and once you see the white boot screen you can remove your usb
- once you have booted of the internal storage, you will need sign in as root and connect to wifi click [here](https://www.makeuseof.com/connect-to-wifi-with-nmcli/). you can skip to step 2
- at this point you can use ssh or contiune type on the tablet.

### SSH: This is all done of device
- download the .sh file from above then `cd` into the folder where you downloaded it
- run the fallowing `scp ldps.sh username@ip:~/lpds.sh` replace `username` with the username you used in the setup and replace `ip` with your device ip
- ssh into your duet with `ssh username@ip` then run `su` to switch to root
- once you login as root run`chmod +x ldps.sh` then `./ldps.sh`
- when you see `auto-cpufreq installer` type `I` then hit enter

### ON Device:
- sign in as root
- run `apt install git`
- run `git clone `


systemctl reboot
