<#include "procedures.java.ftl">
@Mod.EventBusSubscriber
public class ${name}Procedure {
    @OnlyIn(Dist.CLIENT)
    @SubscribeEvent
    public static void starBrightness(EventGetStarBrightness event) {
        <#assign dependenciesCode><#compress>
            <@procedureDependenciesCode dependencies, {
            "world": "event.getLevel()",
            "Brightness": "event.getBrightness()",
            "dimension": "event.getLevel().dimension()",
            "event": "event"
            }/>
        </#compress></#assign>
        execute(event<#if dependenciesCode?has_content>,</#if>${dependenciesCode});
    }