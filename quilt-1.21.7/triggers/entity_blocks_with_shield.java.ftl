<#include "procedures.java.ftl">
public class ${name}Procedure {
    ShieldBlockCallback.EVENT.register((defender, source, amount, hand, shield) -> {
        <#assign dependenciesCode><#compress>
            <@procedureDependenciesCode dependencies, {
            "x": "defender.getX()",
            "y": "defender.getY()",
            "z": "defender.getZ()",
            "entity": "defender",
            "world": "defender.level()",
            "itemstack": "shield",
            "damagesource": "source",
            "amount": "amount"
            }/>
        </#compress></#assign>
        execute(event<#if dependenciesCode?has_content>,</#if>${dependenciesCode});
	return ActionResult.SUCCESS;
	});
    }