<#include "../mcitems.ftl">

{
	"powers":[
	    <#if data.power??>
          <#list data.power as power>
            "${power}"<#if power?has_next>,</#if>
          </#list>
        </#if>
	],
	"icon": "${mappedMCItemToRegistryName(data.icon, false)}",
	"impact": ${data.impact},
	"unchoosable": ${data.unchoosable}
}