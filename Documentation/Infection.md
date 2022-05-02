# Infection
After your server has initially been infected it will rapidly expand to other resources.

We have found through printing each Cipher request that it'll modify two resources.

 - **Old Method:** Modifies the default __rconlog__ resource to allow remote execution.
 - **New Method:** Modifies __YARN__ and __Webpack__ builders.


### New Method Information:
- `resources\[system]\[builders]\yarn\yarn_builder.js` 
	- Will modify the index.js of webpack to run ``is-glob`` node module.
- `resources\[system]\[builders]\webpack\node_modules\is-glob\index.js` 
	- Modifies the ``is-glob`` node module to run remote code and infect further resources.
