<#include "../mcitems.ftl">

package ${package}.superstyled;

import net.fabricmc.api.ModInitializer;
import net.fabricmc.loader.api.FabricLoader;

import java.io.IOException;
import java.nio.file.*;
import java.util.List;

public class ${name}Border implements ModInitializer {

    @Override
    public void onInitialize() {
        Path path = FabricLoader.getInstance().getGameDir().resolve("config/itemborders.toml");
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
