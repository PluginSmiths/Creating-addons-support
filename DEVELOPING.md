There's a step by step instruction about how to make your addon for CAS or add mod to the project's open source.

* Add your mod to the PROGRESS.md file
* Add the mod to the ''mods'' datalist and it's mappings.
* If your mod has procedure blocks then select the category of the mod (see [Mod Selection Criteria](https://github.com/PluginSmiths/Creating-addons-support/wiki/Introduction#mod-selection-criteria)) and create new category for the blocks.
* Select the main mod theme color (usually selected by mod's logo) as HEX and use it for the category a new mod's variables.
* When you're creating new procedure blocks name of them must start with abbreviation of the mod's offical name and in blocks required API's there must be your mod API.
* Moreover, when you're creating triggers, procedures and datalists (optional) you must add your mod's API to the required_apis. It all help to organise the structure of the project.
* Entities, blocks, items, dimensions, damage types, fluids, biomes and etc. should be added to the appropriate datalists.
* Also you should add some procedures templates to templates/ptpl folder if you have new procedures.
