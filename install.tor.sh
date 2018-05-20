gpg --keyserver keys.gnupg.net --recv A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89
gpg --export A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89 | sudo -E apt-key add -
sudo apt update
sudo apt install tor
sudo apt install tor deb.torproject.org-keyring
sudo apt install screen

sudo mv torrc /etc/tor/torrc

sudo mv tunnel /usr/bin/tunnel
sudo chmod 777 /usr/bin/tunnel

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

