sudo apt install tor
gpg --keyserver keys.gnupg.net --recv A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89
gpg --export A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89 | sudo -E apt-key add -
sudo apt update
sudo apt install tor deb.torproject.org-keyring
sudo bash -c 'echo "ControlPort 9051
DataDirectory ~/.tor
HTTPSProxy 172.16.2.30:8080
HTTPProxy 172.16.2.30:8080
#Socks5Proxy 172.16.2.30:8080
Log notice stdout
ReachableAddresses *:80,*:443
ReachableAddresses reject *:*
ReachableAddresses reject *:*
ReachableAddresses reject *:*
SocksPort 9050
HashedControlPassword 16:405C6E032DE07FF0609BADA5BA92D9863A4F309442B486924B229987F2" > /etc/tor/torrc'
sudo apt install screen
bash -c 'echo "
unproxy()
{
    export HTTP_PROXY=""
    export http_proxy=""
    export HTTPS_PROXY=""
    export https_proxy=""
    export all_proxy=""
}
" >> ~/.bashrc'
#
# Proxy tunel port 8008
# conect browser at host:127.0.0.1 port:8008
#
echo "screen -dmS tor bash -c 'tor --HTTPTunnelPort 8008;exec bash'
echo 'unproxy'>>~/.bashrc
kill -9 \$(pidof tor) >/dev/null 2>/dev/null
torify bash 
head -n -1 ~/.bashrc > ~/temp ; mv ~/temp ~/.bashrc
killall screen 2>/dev/null >/dev/null
kill -9 \$(pidof tor) >/dev/null 2>/dev/null
" > tor

#
# run bash with tor 
# 
sudo cp tor /usr/bin/tunnel
sudo chmod 777 /usr/bin/tunnel
