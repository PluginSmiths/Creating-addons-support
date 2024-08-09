<#include "../mcitems.ftl">
{
  "type": "farmersdelight:cutting",
  "ingredients": [
    {
      "item": "${mappedMCItemToRegistryName(data.cuttinginput)}"
    }
  ],
  "result": [
    {
      "chance": ${data.cuttingchance},
      "count": ${data.count},
      "item": "${mappedMCItemToRegistryName(data.cuttingoutput)}"
    }
  ],
  "sound": ${data.cuttingsound},
  "tool": {
    "type": "farmersdelight:tool_action",
    "action": "${data.cuttingaction}"
  }
}
