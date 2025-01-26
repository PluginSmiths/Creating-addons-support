<#include "procedures.java.ftl">
public class ${name}Procedure {
    PlayerSwimCallback.EVENT.register((player) -> {
        <#assign dependenciesCode><#compress>
            <@procedureDependenciesCode dependencies, {
            "x": "player.getX()",
            "y": "player.getY()",
            "z": "player.getZ()",
            "entity": "player",
            "world": "player.level()"
            }/>
        </#compress></#assign>
        execute(event<#if dependenciesCode?has_content>,</#if>${dependenciesCode});
	return EventResult.SUCCESS;
	});
    }