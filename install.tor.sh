gpg --keyserver keys.gnupg.net --recv A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89
gpg --export A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89 | sudo -E apt-key add -
sudo apt update
sudo apt install -y tor
sudo apt install -y deb.torproject.org-keyring
sudo apt install -y screen

sudo rm /etc/tor/torrc
sudo cp torrc /etc/tor/torrc

sudo rm /usr/bin/tunnel
sudo cp tunnel /usr/bin/tunnel
sudo chmod 777 /usr/bin/tunnel
sudo /etc/init.d/tor start
bash -c 'echo "
unproxy()
{
    export HTTP_PROXY=""
    export http_proxy=""
    export HTTPS_PROXY=""
    export https_proxy=""
    export all_proxy=""
}
">> ~/.bashrc'

