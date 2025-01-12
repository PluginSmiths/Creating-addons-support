<#include "procedures.java.ftl">
@Mod.EventBusSubscriber
public class ${name}Procedure {
    @SubscribeEvent
    public static void beforeTreeFell(ChopEvent.BeforeFellEvent event) {
        <#assign dependenciesCode><#compress>
            <@procedureDependenciesCode dependencies, {
            "x": "event.getChoppedBlockPos().getX()",
            "y": "event.getChoppedBlockPos().getY()",
            "z": "event.getChoppedBlockPos().getZ()",
            "entity": "event.getPlayer()",
            "world": "event.getLevel()",
            "blockstate": "event.getChoppedBlockState()",
            "event": "event"
            }/>
        </#compress></#assign>
        execute(event<#if dependenciesCode?has_content>,</#if>${dependenciesCode});
    }