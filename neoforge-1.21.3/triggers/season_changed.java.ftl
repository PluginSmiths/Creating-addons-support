<#include "procedures.java.ftl">
@Mod.EventBusSubscriber
public class ${name}Procedure {
    @SubscribeEvent
    public static void onEventTriggered(SeasonChangedEvent.Standard event) {
        <#assign dependenciesCode><#compress>
            <@procedureDependenciesCode dependencies, {
            "world": "event.getLevel()",
            "PrevSeason": "(ISeasonState) event.getPrevSeason()",
            "NewSeason": "(ISeasonState) event.getNewSeason()",
            "dimension": "event.getLevel().dimension()",
            "event": "event"
            }/>
        </#compress></#assign>
        execute(event<#if dependenciesCode?has_content>,</#if>${dependenciesCode});
    }