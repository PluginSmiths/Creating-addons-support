<#include "procedures.java.ftl">
@Mod.EventBusSubscriber
public class ${name}Procedure {
    @SubscribeEvent
    public static void onEventTriggered(ChunkTrackingEvent.Start event) {
        <#assign dependenciesCode><#compress>
            <@procedureDependenciesCode dependencies, {
            "x": "event.getPlayer().getX()",
            "y": "event.getPlayer().getY()",
            "z": "event.getPlayer().getZ()",
            "entity": "event.getPlayer()",
            "world": "event.getLevel()",
            "chunk": "event.getLevel().getChunk(new BlockPos( (int) getChunkPos().x, (int) getChunkPos().y, (int) getChunkPos().z)",
            "event": "event"
            }/>
        </#compress></#assign>
        execute(event<#if dependenciesCode?has_content>,</#if>${dependenciesCode});
    }