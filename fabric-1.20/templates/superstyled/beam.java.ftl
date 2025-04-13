<#include "../mcitems.ftl">

package ${package}.superstyled;

import net.fabricmc.api.ModInitializer;
import net.fabricmc.loader.api.FabricLoader;

import java.io.IOException;
import java.nio.file.*;
import java.util.List;

public class ${name}Beam implements ModInitializer {

    @Override
    public void onInitialize() {
        Path path = FabricLoader.getInstance().getGameDir().resolve("config/lootbeams.toml");
        String color = "${data.beam_color.getRGB()}";
        List<String> entries = List.of(
            <#list data.items as item>"${mappedMCItemToRegistryName(item, false)}"<#if item?has_next>, </#if></#list>
        );

        if (Files.exists(path)) {
            try {
                String content = Files.readString(path);
                content = content.replaceFirst("\\[client\\.options\\.manual_beams\\]", "[client.options.manual_beams]\n   " + color + " = " + entries);
                Files.writeString(path, content, StandardOpenOption.TRUNCATE_EXISTING);
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
    }
}

