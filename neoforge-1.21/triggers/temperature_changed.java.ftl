<#include "procedures.java.ftl">
@Mod.EventBusSubscriber
public class ${name}Procedure {
    @SubscribeEvent
    public static void onEventTriggered(TempModifierEvent.Process event) {
        <#assign dependenciesCode><#compress>
            <@procedureDependenciesCode dependencies, {
            "x": "event.getEntity().getX()",
            "y": "event.getEntity().getY()",
            "z": "event.getEntity().getZ()",
            "entity": "event.getEntity()",
            "world": "event.getEntity().level()",
            "isBurningPointChanged": "event.getTrait()==Temperature.Trait.BURNING_POINT",
            "isFreezingPointChanged": "event.getTrait()==Temperature.Trait.FREEZING_POINT",
            "isColdDampeningChanged": "event.getTrait()==Temperature.Trait.COLD_DAMPENING",
            "isHeatDampeningChanged": "event.getTrait()==Temperature.Trait.HEAT_DAMPENING",
            "isHeatResistanceChanged": "event.getTrait()==Temperature.Trait.HEAT_RESISTANCE",
            "isColdResistanceChanged": "event.getTrait()==Temperature.Trait.COLD_RESISTANCE",
            "isWorldChanged": "event.getTrait()==Temperature.Trait.WORLD",
            "isBaseChanged": "event.getTrait()==Temperature.Trait.BASE",
            "isCoreChanged": "event.getTrait()==Temperature.Trait.CORE",
            "event": "event"
            }/>
        </#compress></#assign>
        execute(event<#if dependenciesCode?has_content>,</#if>${dependenciesCode});
    }