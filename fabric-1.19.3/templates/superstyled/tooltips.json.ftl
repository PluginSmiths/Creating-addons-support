<#include "../mcitems.ftl">

{
	"definitions": [
        <#list w.getWorkspace().getModElements() as element>
          <#if element.getType().getRegistryName().equals("superstyled")>
            <#assign tt = element.getGeneratableElement()>
            {
                <#if tt.tooltip_texture??>"image": "${modid}:textures/screens/${tt.tooltip_texture}",</#if>
                <#if tt.start_color??>"startColor": ${tt.start_color.getRGB()},</#if>
                <#if tt.end_color??>"endColor": ${tt.end_color.getRGB()},</#if>
                <#if tt.bg_start_color??>"bgStartColor": ${tt.bg_start_color.getRGB()},</#if>
                <#if tt.bg_end_color??>"bgEndColor": ${tt.bg_end_color.getRGB()},</#if>
                "selectors": [<#list tt.items as item>"${mappedMCItemToRegistryName(item, false)}"<#if item?has_next>,</#if></#list>]
            }<#if element?has_next>,</#if>
          </#if>
        </#list>
    ]
}