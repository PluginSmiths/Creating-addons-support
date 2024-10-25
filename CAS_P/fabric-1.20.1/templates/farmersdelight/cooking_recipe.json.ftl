<#include "../mcitems.ftl">
{
  "type": "farmersdelight:cooking",
  "cookingtime": ${data.cookingtime},
  "experience": ${data.cookingxp},
  "ingredients": [
    <#assign ingredients = "">
    <#list data.cookinginput as element>
        <#if element??>
            <#assign ingredients += "{${mappedMCItemToItemObjectJSON(element)}},">
        </#if>
    </#list>
    ${ingredients[0..(ingredients?last_index_of(',') - 1)]}
  ],
  "recipe_book_tab": ${data.cookingbook},
  "result": {
    "count": ${data.count},
    "item": "${mappedMCItemToRegistryName(data.cookingoutput)}"
  }
}
