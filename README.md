# Raspberry-Pi-as-AP-for-5G-Core
    
Extending the 5G core network of Amarisoft using Raspberry Pi as Wireless AP. Further, adding more of these Access points to create open source 5G-RAN (i.e Access Network)

## Getting Started

### Installing Raspberry Pi OS (upgrade from buster to bullseye)

* Follow steps to upgrade without removing SD card
* https://www.linuxuprising.com/2021/11/how-to-upgrade-raspberry-pi-os-10.html#:~:text=The%20easiest%20way%20to%20do,%2C%20in%20the%20Accessories%20category).&text=3.,OS%20from%20Buster%20to%20Bullseye.

### Executing program

* Waveshare is already installed on the Pi
* sudo minicom -D /dev/ttyUSB2 to run AT commands
* cd Goonline
* make
* sudo ./simcom-cm

```
code blocks for commands
```

## Authors

Haritha Lakshmi Gopinathan


## Version History

* 0.1
    * Initial Release

## License


## Acknowledgments

Inspiration, code snippets, etc.
* [thepi.io-Tutorial](https://thepi.io/how-to-use-your-raspberry-pi-as-a-wireless-access-point/)
* [PurpleBooth](https://gist.github.com/PurpleBooth/109311bb0361f32d87a2)
* 
