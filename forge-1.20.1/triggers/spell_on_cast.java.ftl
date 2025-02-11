<#include "procedures.java.ftl">
@Mod.EventBusSubscriber
public class ${name}Procedure {
    @SubscribeEvent
    public static void onSpellCast(SpellOnCastEvent event) {
        <#assign dependenciesCode><#compress>
            <@procedureDependenciesCode dependencies, {
            "x": "event.player.getX()",
            "y": "event.player.getY()",
            "z": "event.player.getZ()",
            "entity": "event.player",
            "world": "event.player.level()",
            "SpellId": "event.getSpellId()",
            "SchoolType": "event.getSchoolType()",
            "OriginalSpellLevel": "event.getOriginalSpellLevel()",
            "SpellLevel": "event.getSpellLevel()",
            "OriginalManaCost": "event.getOriginalManaCost()",
            "ManaCost": "event.getManaCost()",
            "CastSource": "event.getCastSource()",
            "event": "event"
            }/>
        </#compress></#assign>
        execute(event<#if dependenciesCode?has_content>,</#if>${dependenciesCode});
    }