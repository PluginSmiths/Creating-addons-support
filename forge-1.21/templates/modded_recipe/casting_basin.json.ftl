<#include "../mcitems.ftl">
{
  "type": "createmetallurgy:casting_in_basin",
  "mold_consumed": true,
  "processingTime": ${data.processing_time},
  "ingredients": [
  <#list data.ingredient as ing>
    {
      "item": "${mappedMCItemToRegistryName(ing.item, true)}",
      "count": ${ing.amount}
    }<#if ing?has_next>,</#if>
  </#list>
  ],
  "result": {
    <#list data.result as res>
        "item": "${mappedMCItemToRegistryName(res.item, true)}"
    </#list>
  }
}
