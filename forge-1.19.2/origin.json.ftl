<#include "../mcitems.ftl">

{
	"powers":[
        <#list data.power as power>
        "${power}"<#if power?has_next>,</#if>
        </#list>
	],
	"icon": "${mappedMCItemToRegistryName(data.icon, false)}",
	"impact": ${data.impact},
	"unchoosable": ${data.unchoosable}
}