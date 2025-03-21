<#include "procedures.java.ftl">
@Mod.EventBusSubscriber
public class ${name}Procedure {
    @SubscribeEvent
    public static void startChop(ChopEvent.StartChopEvent event) {
        <#assign dependenciesCode><#compress>
            <@procedureDependenciesCode dependencies, {
            "x": "event.getChoppedBlockPos().getX()",
            "y": "event.getChoppedBlockPos().getY()",
            "z": "event.getChoppedBlockPos().getZ()",
            "entity": "event.getPlayer()",
            "world": "event.getLevel()",
            "blockstate": "event.getChoppedBlockState()",
            "Chops": "event.getNumChops()",
            "Felling": "event.getFelling()",
            "event": "event"
            }/>
        </#compress></#assign>
        execute(event<#if dependenciesCode?has_content>,</#if>${dependenciesCode});
    }