<#include "procedures.java.ftl">
@Mod.EventBusSubscriber
public class ${name}Procedure {
    @SubscribeEvent
    public static void playerPickUpEntity(EntityPickupEvent event) {
        <#assign dependenciesCode><#compress>
            <@procedureDependenciesCode dependencies, {
            "x": "event.player.getX()",
            "y": "event.player.getY()",
            "z": "event.player.getZ()",
            "entity": "event.target",
            "sourceentity": "event.player",
            "world": "event.player.level()",
            "event": "event"
            }/>
        </#compress></#assign>
        execute(event<#if dependenciesCode?has_content>,</#if>${dependenciesCode});
    }