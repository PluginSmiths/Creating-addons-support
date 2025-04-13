<#include "../mcitems.ftl">
type=item
items=<#list data.items as item>${mappedMCItemToRegistryName(item, false)}<#if item?has_next> </#if></#list>
texture=${modid}:textures/item/${data.named_texture}
nbt.display.Name=ipattern:${data.name_text}