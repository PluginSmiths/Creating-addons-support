<#include "procedures.java.ftl">
@Mod.EventBusSubscriber
public class ${name}Procedure {
    @SubscribeEvent
    public static void onEventTriggered(ChangeManaEvent event) {
        <#assign dependenciesCode><#compress>
            <@procedureDependenciesCode dependencies, {
            "x": "event.player.getX()",
            "y": "event.player.getY()",
            "z": "event.player.getZ()",
            "entity": "event.player",
            "world": "event.player.level()",
            "MagicData": "event.getMagicData()",
            "OldMana": "event.getOldMana()",
            "NewMana": "event.getNewMana()",
            "event": "event"
            }/>
        </#compress></#assign>
        execute(event<#if dependenciesCode?has_content>,</#if>${dependenciesCode});
    }