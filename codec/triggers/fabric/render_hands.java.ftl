<#include "procedures.java.ftl">
@Mod.EventBusSubscriber
public class ${name}Procedure {
    @OnlyIn(Dist.CLIENT)
    @SubscribeEvent
    public static void onEventTriggered(EventPosePlayerHand event) {
        <#assign dependenciesCode><#compress>
            <@procedureDependenciesCode dependencies, {
            "x": "event.getEntityIn().getX()",
            "y": "event.getEntityIn().getY()",
            "z": "event.getEntityIn().getZ()",
            "entity": "event.getEntityIn()",
            "world": "event.getEntityIn().level()",
            "LeftHand": "event.isLeftHand()",
            "Model": "event.getModel()",
            "event": "event"
            }/>
        </#compress></#assign>
        execute(event<#if dependenciesCode?has_content>,</#if>${dependenciesCode});
    }