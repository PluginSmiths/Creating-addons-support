<#include "../mcitems.ftl">
{
  "type": "farmersdelight:cutting",
  "ingredients": [
  <#list data.ingredient as ing>
    {
      "item": "${mappedMCItemToRegistryName(ing.item, true)}",
      "count": ${ing.amount}
    }<#if ing?has_next>,</#if>
  </#list>
  ],
  "result": [
    <#list data.result as res>
      {
        "item": "${mappedMCItemToRegistryName(res.item, true)}",
        "count": ${res.amount},
        "chance": ${res.chance}
      }<#if res?has_next>,</#if>
    </#list>
  ],
  "sound": "${data.sound.getMappedValue()}",
  "tool": {
    <#if data.list=="knive">
        "tag": "forge:tools/knives"
    <#else>
        "type": "farmersdelight:tool_action",
        "action": "${data.list}"
    </#if>
  }
}
