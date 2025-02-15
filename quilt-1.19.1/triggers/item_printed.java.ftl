<#include "procedures.java.ftl">
public class ${name}Procedure {
    PrinterOutputCreated.EVENT.register((blockEntity, stack) -> {
        <#assign dependenciesCode><#compress>
            <@procedureDependenciesCode dependencies, {
            "x": "blockEntity.getPos().getX()",
            "y": "blockEntity.getPos().getY()",
            "z": "blockEntity.getPos().getZ()",
            "world": "blockEntity.getWorld()",
            "blockstate": "blockEntity",
            "item": "stack"
            }/>
        </#compress></#assign>
        execute(event<#if dependenciesCode?has_content>,</#if>${dependenciesCode});
	});
    }