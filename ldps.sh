#Shimmy Shitty Post install script for cadmium
#Version 081124.1

apt install -y sudo libwacom-bin maliit-keyboard maliit-framework alsa-utils
#Fix the Stylus and screen rotate "Thank you Azull"
mkdir /etc/libwacom/
cp google-krane.tablet /etc/libwacom/google-krane.tablet

cp local-overrides.quirks /etc/libinput/local-overrides.quirks

cp 61-cros-ec-accel.rules /etc/udev/rules.d/61-cros-ec-accel.rules

libwacom-update-db

#installs auto-cpufreq: https://github.com/AdnanHodzic/auto-cpufreq?tab=readme-ov-file#installing-auto-cpufreq
git clone https://github.com/AdnanHodzic/auto-cpufreq.git
cd auto-cpufreq && ./auto-cpufreq-installer

#makes sddm use wayland (Not required if using GDM)
mkdir /etc/sddm.conf.d/
echo "[General]
DisplayServer=wayland" > /etc/sddm.conf.d/force_x11.conf

echo "please pick your desktop. Plasma works the best"
sleep 2
