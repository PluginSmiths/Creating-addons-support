<#include "procedures.java.ftl">
@Mod.EventBusSubscriber
public class ${name}Procedure {
    @SubscribeEvent
    public static void onEventTriggered(InscribeSpellEvent event) {
        <#assign dependenciesCode><#compress>
            <@procedureDependenciesCode dependencies, {
            "x": "event.player.getX()",
            "y": "event.player.getY()",
            "z": "event.player.getZ()",
            "entity": "event.player",
            "world": "event.player.level()",
            "SpellData": "event.getSpellData()",
            "event": "event"
            }/>
        </#compress></#assign>
        execute(event<#if dependenciesCode?has_content>,</#if>${dependenciesCode});
    }