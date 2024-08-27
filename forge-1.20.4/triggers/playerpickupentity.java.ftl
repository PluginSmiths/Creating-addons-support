<#include "procedures.java.ftl">
@Mod.EventBusSubscriber
public class ${name}Procedure {
    @SubscribeEvent
    public static void onEventTriggered(EntityPickupEvent event) {
        <#assign dependenciesCode><#compress>
            <@procedureDependenciesCode dependencies, {
            "entity": "event.target",
            "sourceentity": "event.player",
            "event": "event"
            }/>
        </#compress></#assign>
        execute(event<#if dependenciesCode?has_content>,</#if>${dependenciesCode});
    }