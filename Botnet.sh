
#!/usr/bin/env bash

cd Bot-net

install() {
	    cd tg
		sudo add-apt-repository -y ppa:ubuntu-toolchain-r/test
		sudo apt-get install g++-4.7 -y c++-4.7 -y
		sudo apt-get update
		sudo apt-get upgrade
		sudo apt-get install libreadline-dev -y libconfig-dev -y libssl-dev -y lua5.2 -y liblua5.2-dev -y lua-socket -y lua-sec -y lua-expat -y libevent-dev -y make unzip git redis-server autoconf g++ -y libjansson-dev -y libpython-dev -y expat libexpat1-dev -y
		sudo apt-get install screen -y
		sudo apt-get install tmux -y
		sudo apt-get install libstdc++6 -y
		sudo apt-get install lua-lgi -y
		sudo apt-get install libnotify-dev -y
		sudo service redis-server restart
		wget https://valtman.name/files/telegram-cli-1222
		mv telegram-cli-1222 tgcli
		chmod +x tgcli
		cd ..
		chmod +x bot
		chmod +x tg
}

if [ "$1" = "install" ]; then
  install
  else

if [ ! -f ./tg/tgcli ]; then
    echo "tg not found"
    echo "Run $0 install"
    exit 1
fi

if [ "$1" = "-p" ]; then
    echo -e "\033[38;5;208m"
    echo -e "     >> Bot-net Source By Sajad Aliraqe - @Al_Srai                    "
    echo -e "                                              \033[0;00m"
    echo -e "\e[36m"
    ./tg/tgcli -s ./bot/bot.lua -p $2
fi
   echo -e "\033[38;5;208m"
   echo -e "     >> Bot-net Source By Sajad Aliraqe - @Al_Srai                      "
   echo -e "                                              \033[0;00m"
   echo -e "\e[36m"
   ./tg/tgcli -s ./bot/bot.lua -l 1 -E $@
fi
