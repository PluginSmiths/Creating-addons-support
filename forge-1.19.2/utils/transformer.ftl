<#function transformExtension mappedBlock>
    <#assign extension = mappedBlock?keep_after_last(".")?replace("body", "chestplate")?replace("legs", "leggings")>
    <#return (extension?has_content)?then("_" + extension, "")>
</#function>

<#function mappedMCItemToRegistryName mappedBlock>
    <#if mappedBlock.getUnmappedValue().startsWith("CUSTOM:")>
        <#assign customelement = generator.getRegistryNameFromFullName(mappedBlock.getUnmappedValue())!""/>
        <#if customelement?has_content>
            <#return "\"" + "${modid}:" + customelement
            + transformExtension(mappedBlock)
            + "\"">
        <#else>
            <#return "\"minecraft:air\"">
        </#if>
    <#else>
        <#assign mapped = mappedBlock.getMappedValue(1) />
        <#if mapped.contains(":")>
            <#return "\"" + mapped + "\"">
        <#else>
            <#return "\"minecraft:" + mapped + "\"">
        </#if>
    </#if>
</#function>

<#function mappedMCItemToName mappedBlock>
    <#if mappedBlock.getUnmappedValue().startsWith("CUSTOM:")>
        <#assign customelement = generator.getRegistryNameFromFullName(mappedBlock.getUnmappedValue())!""/>
        <#if customelement?has_content>
            <#return "\"" + customelement
            + transformExtension(mappedBlock)
            + "\"">
        <#else>
            <#return "\"air\"">
        </#if>
    <#else>
        <#assign mapped = mappedBlock.getMappedValue(1) />
        <#if mapped.contains(":") == false>
            <#return "\"" + mapped + "\"">
        <#else>
            <#return "\"air\"">
        </#if>
    </#if>
</#function>