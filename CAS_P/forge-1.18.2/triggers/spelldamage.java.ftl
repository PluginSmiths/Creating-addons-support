<#include "procedures.java.ftl">
@Mod.EventBusSubscriber
public class ${name}Procedure {
    @SubscribeEvent
    public static void onEventTriggered(SpellDamageEvent event) {
        <#assign dependenciesCode><#compress>
            <@procedureDependenciesCode dependencies, {
            "x": "event.livingEntity.getX()",
            "y": "event.livingEntity.getY()",
            "z": "event.livingEntity.getZ()",
            "entity": "event.livingEntity",
            "world": "event.livingEntity.level()",
            "damagesource": "event.getSpellDamageSource().get()",
            "OriginalAmount": "event.getOriginalAmount()",
            "Amount": "event.getAmount()",
            "event": "event"
            }/>
        </#compress></#assign>
        execute(event<#if dependenciesCode?has_content>,</#if>${dependenciesCode});
    }