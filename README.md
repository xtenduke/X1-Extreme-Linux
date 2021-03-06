# X1-Extreme-Linux
Scripts &amp; helpers for running Ubuntu on a Thinkpad X1 Extreme Gen 2

## Disable nvidia gpu
Disable the Nvidia gpu (this will kill external display out, beware)
Add nvidia blacklists to grub kernel params, should look something like this
```
GRUB_CMDLINE_LINUX_DEFAULT="quiet splash modprobe.blacklist=nouveau modprobe.blacklist=nvidia"
```
Update grub and restart
```
sudo update-grub
sudo shutdown -r now
```

## Power management
Run basic powersaving features on boot
Installation:
```bash
cp duke-powermanagement.service /etc/systemd/system
cp duke-powermanagement-helper.sh /usr/sbin
chmod 744 /usr/sbin/duke-powermanagement-helper.sh
systemctl start duke-powermanagement.service
systemctl enable duke-powermanagement.service
```

## Throttled
Intel CPU undervolting with Throttled
https://github.com/erpalma/throttled

