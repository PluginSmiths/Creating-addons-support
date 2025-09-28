<#include "../mcitems.ftl">
{
  "type": "create:crushing",
  "processingTime": ${data.processing_time},
  "ingredients": [
  <#list data.ingredient as ing>
    {
      "item": "${mappedMCItemToRegistryName(ing.item, true)}",
      "count": ${ing.amount}
    }<#if ing?has_next>,</#if>
  </#list>
  ],
  "results": [
    <#list data.result as res>
      {
        "item": "${mappedMCItemToRegistryName(res.item, true)}",
        "count": ${res.amount},
        "chance": ${res.chance}
      }<#if res?has_next>,</#if>
    </#list>
  ]
}
