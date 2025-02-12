<#include "procedures.java.ftl">
public class ${name}Procedure {
    InventoryLockingChangeCallback.EVENT.register((player, part, locked) -> {
        <#assign dependenciesCode><#compress>
            <@procedureDependenciesCode dependencies, {
            "x": "player.getX()",
            "y": "player.getY()",
            "z": "player.getXZ)",
            "entity": "player",
            "world": "player.getWorld()",
            "locked": "locked"
            }/>
        </#compress></#assign>
        execute(event<#if dependenciesCode?has_content>,</#if>${dependenciesCode});
	});
    }