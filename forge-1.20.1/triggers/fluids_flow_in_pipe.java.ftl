<#include "procedures.java.ftl">
@Mod.EventBusSubscriber
public class ${name}Procedure {
    @SubscribeEvent
    public static void onEventTriggered(PipeCollisionEvent.Flow event) {
        <#assign dependenciesCode><#compress>
            <@procedureDependenciesCode dependencies, {
            "x": "event.getPos().x",
            "y": "event.getPos().y",
            "z": "event.getPos().z",
            "world": "event.getLevel()",
            "blockstate": "event.getState()",
            "first_fluid": "event.getFirstFluid().createLegacyBlock(event.getFirstFluid().defaultFluidState)",
            "second_fluid": "event.getSecondFluid().createLegacyBlock(event.getSecondFluid().defaultFluidState)",
            "dimension": "event.getLevel().dimension()",
            "event": "event"
            }/>
        </#compress></#assign>
        execute(event<#if dependenciesCode?has_content>,</#if>${dependenciesCode});
    }