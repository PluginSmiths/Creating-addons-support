<#include "../transformer.ftl">
{
  "type": "farmersdelight:cutting",
  "ingredients": [
    {
      "item": ${mappedMCItemToRegistryName(data.input)}
    }
  ],
  "result": [
    {
      "chance": ${data.chance},
      "count": ${data.count},
      "item": ${mappedMCItemToRegistryName(data.output)}
    }
  ],
  "sound": ${data.sound},
  "tool": {
    "type": "farmersdelight:tool_action",
    "action": ${data.action}
  }
}
