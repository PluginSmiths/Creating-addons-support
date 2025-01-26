<#include "procedures.java.ftl">
public class ${name}Procedure {
    LivingFluidCollisionCallback.EVENT.register((player, fluidState) -> {
        <#assign dependenciesCode><#compress>
            <@procedureDependenciesCode dependencies, {
            "x": "player.getX()",
            "y": "player.getY()",
            "z": "player.getZ()",
            "entity": "player",
            "world": "player.level()",
            "blockstate": "fluidState.createLegacyBlock()"
            }/>
        </#compress></#assign>
        execute(event<#if dependenciesCode?has_content>,</#if>${dependenciesCode});
	return true;
	});
    }