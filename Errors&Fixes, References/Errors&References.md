# Errors,Fixes& References

## Description

Each error along with its fix , with source link is provided together as a section

## Raspbian OS

### Unable to apt-get update 

* Repository changed its state from stable to oldstable
* This must be accepted explicitly before updates for this repository can be applied.
* Fix : 
```
sudo apt update --allow-releaseinfo-change
sudo apt-get update
```
* Ref : https://forums.raspberrypi.com/viewtopic.php?t=245073

### Unable to fetch packages

* This could happen while trying to install hostapd or dnsmasq packages.
* Error : 404 Not found
* Failed to fetch package http://raspbian.....
* This happens because the latest link is not stored in the local update list
* Fix : Make sure apt-get update command has completed successfully.

### Executing program

* How to run the program
* Step-by-step bullets
```
code blocks for commands
```

