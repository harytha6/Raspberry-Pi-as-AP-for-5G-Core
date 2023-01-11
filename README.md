# Raspberry-Pi-as-AP-for-5G-Core
    
Extending the 5G core network of Amarisoft using Raspberry Pi as Wireless AP. Further, adding more of these Access points to create open source 5G-RAN (i.e Access Network)

## Getting Started

### Installing Raspberry Pi OS (upgrade from buster to bullseye)

* Follow steps to upgrade without removing SD card
* https://www.linuxuprising.com/2021/11/how-to-upgrade-raspberry-pi-os-10.html#:~:text=The%20easiest%20way%20to%20do,%2C%20in%20the%20Accessories%20category).&text=3.,OS%20from%20Buster%20to%20Bullseye.

### Architecture

![5G AN RPI_Final](https://user-images.githubusercontent.com/74201141/211921175-234bb122-d931-4352-8e17-f2b60c6f1c08.png)


### Editing the gnb-sa.cfg file

![gnbsaho2](https://user-images.githubusercontent.com/74201141/211921497-c0119692-c5de-40e4-96f8-764b9eec6f97.png)


### Configuring NAPT Rules to enable two-way SDP Traffic

```
iptables -t nat -A PREROUTING -p udp --destination 192.168.2.2 --dport 8000 --jump DNAT --to-destination 11.11.11.221:8000 
iptables -t nat -A PREROUTING -p udp --destination 192.168.2.2 --dport 8001 --jump DNAT --to-destination 11.11.11.221:8001 
iptables -t nat -A PREROUTING -p udp -d 192.168.2.2 -j DNAT --to-destination 11.11.11.221 
iptables -t nat -A POSTROUTING -o wwan0 -j SNAT --to-source 192.168.2.2
```

### Executing program

* Waveshare is already installed on the Pi
* sudo minicom -D /dev/ttyUSB2 to run AT commands

```
cd Goonline
* make
* sudo ./simcom-cm
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
