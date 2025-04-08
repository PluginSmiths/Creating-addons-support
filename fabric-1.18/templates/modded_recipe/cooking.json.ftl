<#include "../mcitems.ftl">
{
  "type": "farmersdelight:cooking",
  "cookingtime": ${data.processing_time},
  "experience": ${data.experience},
  "ingredients": [
  <#list data.ingredient as ing>
    {
      "item": "${mappedMCItemToRegistryName(ing.item, true)}",
      "count": ${ing.amount}
    }<#if ing?has_next>,</#if>
  </#list>
  ],
  "recipe_book_tab": ${data.list},
  "result": {
    "item": "${mappedMCItemToRegistryName(data.result.getFirst().item, true)}",
    "count": ${data.result.getFirst().amount}
  }
}
