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

### Installing

* How/where to download your program
* Any modifications needed to be made to files/folders

### Executing program

* How to run the program
* Step-by-step bullets
```
code blocks for commands
```

