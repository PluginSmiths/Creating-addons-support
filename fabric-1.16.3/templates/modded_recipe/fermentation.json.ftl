<#include "../mcitems.ftl">
{
  "type": "createdieselgenerators:distillation",
  "processingTime": ${data.processing_time},
  "ingredients": [
  <#list data.ingredient as ing>
    {
      "item": "${mappedMCItemToRegistryName(ing.item, true)}",
      "count": ${ing.amount}
    }<#if ing?has_next>,</#if>
  </#list>
  ],
  <#if data.list!="not_heated">
    "heatRequirement": ${data.list},
  </#if>
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
