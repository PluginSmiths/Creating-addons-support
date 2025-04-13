<#include "../mcitems.ftl">

package ${package}.superstyled;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;

@EventBusSubscriber(bus = EventBusSubscriber.Bus.MOD)
public class ${name}Border {

    @SubscribeEvent
    public static void init(FMLCommonSetupEvent event) {
        Path path = FMLPaths.GAMEDIR.get().resolve("config/itemborders.toml");

        String color = String.format("#%06X", ${data.border_color.getRGB()} & 0xFFFFFF);

        List<String> items = List.of(
            <#list data.items as item>"${mappedMCItemToRegistryName(item, false)}"<#if item?has_next>, </#if></#list>
        );

        if(Files.exists(path)) {
            try {
                String content = new String(Files.readAllBytes(path));
                String replace = "";
                for (String item : items) {
                    replace += item + "=" + color + ", ";
                }
                if(content.split("color_overrides = [", 1)[1].charAt(0) != ']') {
                    replace.substring(0, replace.length() - 2);
                }
                content = content.replaceFirst("color_overrides = [", "color_overrides = [" + replace);
                Files.write(path, content.getBytes());
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }
}