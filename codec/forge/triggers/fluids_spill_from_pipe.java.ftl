<#include "procedures.java.ftl">
@Mod.EventBusSubscriber
public class ${name}Procedure {
    @SubscribeEvent
    public static void onEventTriggered(PipeCollisionEvent.Spill event) {
        <#assign dependenciesCode><#compress>
            <@procedureDependenciesCode dependencies, {
            "x": "event.getPos().x",
            "y": "event.getPos().y",
            "z": "event.getPos().z",
            "world": "event.getLevel()",
            "blockstate": "event.getState()",
            "dimension": "event.getLevel().dimension()",
            "world_fluid": "event.getWorldFluid().createLegacyBlock(event.getWorldFluid().defaultFluidState)",
            "pipe_fluid": "event.getPipeFluid().createLegacyBlock(event.getPipeFluid().defaultFluidState)",
            "event": "event"
            }/>
        </#compress></#assign>
        execute(event<#if dependenciesCode?has_content>,</#if>${dependenciesCode});
    }