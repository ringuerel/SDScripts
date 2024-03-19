# SDScripts

This project is just to have some .sh scripts to use them on the SteamDeck (ideally with [bash-shortcuts plugin](https://github.com/Tormak9970/bash-shortcuts)), these intend to provide a starting point to commonly used scripts

# How to use it

Clone this repo or directly download the scripts that you're interested into, I ended up adding these into the bash-shortcuts decky loader plugin with this line:

`LD_PRELOAD= QT_SCALE_FACTOR=1.25 konsole -e "/home/deck/SDScripts/zerotier_connect.sh <networkID...without the <> things>"`

So for example the above will execute the zerotier_connect.sh script and provide it with the networkID that I want this shortcut to connect.
Take into account that the shortcut must have the "launches an app" flag set to true (enabled).

# Scripts

The provided scripts are just things that I've been using, I'll mention when one script needs another (common when it is a sudoer command)

## Syncthing sync

the [syncthing sync](./scripts/syncthing_sync.sh) script will perform a request to a running syncthing on the steamdeck in order to scan all folders for changes, this one requires you to generate an API key on the syncthing and modify the script adding the API key to it by replacing *SYNCTHING_API_KEY_HERE* with your own key.
The command on the bash-shortcuts plugin ended up like `LD_PRELOAD= QT_SCALE_FACTOR=1.25 konsole -e "/home/deck/SDScripts/scripts/syncthing_sync.sh"` for me

## Zerotier

Zerotier scripts are meant to connect/disconnect your steamdeck to a given Zerotier network (you provide the ID on the bash-shortcuts), these require sudoer password which you'll have to provide in a separate file [deck_login](./scripts/deck_login_template.sh) you'll need to modify that script by providing your sudoer password where it has *passwordhere*, rename the file to *dec_login.sh* or whatever name you want (just remember it), perform a `chmod 777 ./deck_login.sh` command in order to grant permissions on the script.

Once the password has been placed in an accessible script, download the scripts below:
- [zerotier_connect.sh](./scripts/zerotier_connect.sh): This will connect to the provided zerotier network
    - The command on the bash-shortcuts plugin ended up like `LD_PRELOAD= QT_SCALE_FACTOR=1.25 konsole -e "/home/deck/SDScripts/scripts/zerotier_connect.sh SOME_NETWORK_ID"` for me
- [zerotier_disconnect.sh](./scripts/zerotier_disconnect.sh): This will disconnect from the provided zerotier network
    - The command on the bash-shortcuts plugin ended up like `LD_PRELOAD= QT_SCALE_FACTOR=1.25 konsole -e "/home/deck/SDScripts/scripts/zerotier_disconnect.sh SOME_NETWORK_ID"` for me

# Idea

Move some configs to a separate file (i.e: instead of an echo passed password an actual config file for it, path of the scripts and maybe syncthing port)

# Support

Any [support](https://streamlabs.com/ringuerel/tip) will of course be welcome