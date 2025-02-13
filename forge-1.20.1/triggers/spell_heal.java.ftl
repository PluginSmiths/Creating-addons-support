<#include "procedures.java.ftl">
@Mod.EventBusSubscriber
public class ${name}Procedure {
    @SubscribeEvent
    public static void onSpellHeal(SpellHealEvent event) {
        <#assign dependenciesCode><#compress>
            <@procedureDependenciesCode dependencies, {
            "x": "event.castingEntity.getX()",
            "y": "event.castingEntity.getY()",
            "z": "event.castingEntity.getZ()",
            "entity": "event.getTargetEntity()",
            "sourceentity": "event.castingEntity",
            "world": "event.castingEntity.level()",
            "HealAmount": "event.getHealAmount()",
            "SchoolType": "event.getSchoolType()",
            "event": "event"
            }/>
        </#compress></#assign>
        execute(event<#if dependenciesCode?has_content>,</#if>${dependenciesCode});
    }