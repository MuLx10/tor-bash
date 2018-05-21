# tor-bash
## Run proxy free internet in bash and browser

## Setup
```bash
$ git clone https://github.com/MuLx10/tor-bash.git
$ cd tor-bash
$ bash install.tor.sh
$ cd ..
$ rm -rf tor-bash
```

# Run

Remove proxies exported in environment.
```bash
$ tunnel
```
![](https://user-images.githubusercontent.com/23444642/40278810-d0c2c5ec-5c55-11e8-893b-ab04e4cdc94a.png)
![screenshot from 2018-05-20 17-48-28](https://user-images.githubusercontent.com/23444642/40278833-0eadcbc2-5c56-11e8-8faf-69db5a6ad6a1.png)


# Run tor with browser
 Point SOCKS proxy to `127.0.0.1:9050` as shown
 
![screenshot from 2018-05-21 01-22-40](https://user-images.githubusercontent.com/23444642/40283024-9f1bbff4-5c95-11e8-9878-489cadba5d36.png)

Verify at [check](https://check.torproject.org/)

# Other Dev Settings

Change the values as per your need in `torrc`.
```
DataDirectory {HOME_FOLDER}/.tor
HTTPSProxy YOUR_INSTITUTE_PROXY
HTTPProxy YOUR_INSTITUTE_PROXY
```
