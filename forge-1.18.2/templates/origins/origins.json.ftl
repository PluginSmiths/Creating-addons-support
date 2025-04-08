{
  "allow_random":true,
  "origins": [
    <#list w.getWorkspace().getModElements() as element>
      <#if element.getType().getRegistryName().equals("origin")>
        "${modid}:${element.getType().getRegistryName()}"<#if element?has_next>,</#if>
      </#if>
    </#list>
  ]
}