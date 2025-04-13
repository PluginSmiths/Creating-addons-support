<#include "../mcitems.ftl">

package ${package}.superstyled;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardOpenOption;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.HashMap;

@EventBusSubscriber(bus = EventBusSubscriber.Bus.MOD)
public class ${name}Beam {

    @SubscribeEvent
    public static void init(FMLCommonSetupEvent event) {
        Path path = FMLPaths.GAMEDIR.get().resolve("config/lootbeams.toml");

        String color = "${data.beam_color.getRGB()}";
        List<String> entries = List.of(
            <#list data.items as item>"${mappedMCItemToRegistryName(item, false)}"<#if item?has_next>, </#if></#list>
        );

        if(Files.exists(path)) {
            try {
                String content = new String(Files.readAllBytes(path));
                content = content.replaceFirst("[client.options.manual_beams]", "[client.options.manual_beams]\n   " + color + " = " + entries + "\n");
                Files.write(path, content.getBytes());
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }
}
