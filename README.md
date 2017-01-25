  - [Bot-net](https://telegram.me/Al_Srai1) Source By Sajad Aliraqe
============

  - An advanced and powerful administration bot based on NEW TG-CLI


-----------------

## Commands

| Use (help) to see help list |
|:--------|:------------|
| [#!/]help |

| Use (setlang ar) To use bot in Arabic >Or< To use bot in English send (setlang en) |
|:--------|:------------|
| [#!/]setlang [ar / en] | 

-You can use "#", "!", or "/" to begin all commands


* * *

# Installation

````
# Let's install the bot.

# Open new terminal and type :

redis-server

# Open a new teminal agin and type :

sudo apt-get update
cd $HOME
git clone https://github.com/sajad1200/Bot-net.git
cd Bot-net
chmod +x Botnet.sh
./Botnet.sh install
./Botnet.sh # Enter a phone number & confirmation code.

# And run thes files :

Netredis.sh
Botnet.sh
``````
### One command
To install everything in one command, use:
```sh
cd $HOME && git clone https://github.com/sajad1200/Bot-net.git && cd Bot-net && chmod +x Botnet.sh && ./Botnet.sh install && ./Botnet.sh
```

* * *

### Sudo And Bot
After you run the bot for first time, send it `/id`. Get your ID and stop the bot.

Open ./bot/bot.lua and add your ID to the "sudo_users" section in the following format:
```
    sudo_users = {
    321681775,
    0,
    YourID
  }
```
run file netredis.lua
add your bot ID at line 4
add your ID at line 82 in bot.lua
add your ID at line 235 in tools.lua
Then restart the bot.

# Support and development

More information [Bot-net Development](https://t.me/joinchat/AAAAAD6v2N-Xoupx5d3aOQ)

* * *

# Developer!


- [Sajad Aliraqe On github](https://github.com/sajad1200) 

- [Sajad Aliraqe On Telegram](https://telegram.me/Al_Srai)

- [Sahmi](https://telegram.me/safl888)


### Our Telegram channel:

[Bot-Net Channel](https://telegram.me/Al_Srai1)

