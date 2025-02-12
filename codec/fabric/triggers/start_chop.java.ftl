<#include "procedures.java.ftl">
public class ${name}Procedure {
    TreeChopEvents.BEFORE_CHOP.register((world, player, pos, state, chopData) -> {
        <#assign dependenciesCode><#compress>
            <@procedureDependenciesCode dependencies, {
            "x": "pos.getX()",
            "y": "pos.getY()",
            "z": "pos.getZ()",
            "entity": "player",
            "world": "world",
            "blockstate": "state"
            }/>
        </#compress></#assign>
        execute(event<#if dependenciesCode?has_content>,</#if>${dependenciesCode});
	return true;
	});
    }