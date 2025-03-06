<#include "procedures.java.ftl">
public class ${name}Procedure {
    TreeChopEvents.AFTER_CHOP.register((world, player, pos, state, chopData, felled) -> {
        <#assign dependenciesCode><#compress>
            <@procedureDependenciesCode dependencies, {
            "x": "pos.getX()",
            "y": "pos.getY()",
            "z": "pos.getZ()",
            "entity": "player",
            "world": "world",
            "blockstate": "state",
            "Felled": "felled"
            }/>
        </#compress></#assign>
        execute(event<#if dependenciesCode?has_content>,</#if>${dependenciesCode});
	});
    }