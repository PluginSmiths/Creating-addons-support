<#include "procedures.java.ftl">
public class ${name}Procedure {
    TreeChopEvents.BEFORE_FELL.register((world, player, pos, fellData) -> {
        <#assign dependenciesCode><#compress>
            <@procedureDependenciesCode dependencies, {
            "x": "pos.getX()",
            "y": "pos.getY()",
            "z": "pos.getZ()",
            "entity": "player",
            "world": "world"
            }/>
        </#compress></#assign>
        execute(event<#if dependenciesCode?has_content>,</#if>${dependenciesCode});
	return true;
	});
    }