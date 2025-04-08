<#include "../mcitems.ftl">

package ${package}.superstyled;

import net.neoforged.fml.event.lifecycle.FMLCommonSetupEvent;
import net.neoforged.fml.common.EventBusSubscriber;
import net.neoforged.bus.api.SubscribeEvent;
import net.neoforged.bus.api.Event;

import com.electronwill.nightconfig.core.file.CommentedFileConfig;
import java.io.File;
import com.electronwill.nightconfig.core.Config;

@EventBusSubscriber(bus = EventBusSubscriber.Bus.MOD)
public class ${name}Border {
	@SubscribeEvent
	public static void init(FMLCommonSetupEvent event) {
		CommentedFileConfig config = CommentedFileConfig.builder(new File(FMLPaths.GAMEDIR.get().toString() + "/config/itemborders.toml")).autoreload().autosave().build();
        config.load();

        Config borders = config.get("client.options.manual_borders");

        String color = "${data.border_color.getRGB()}";
        List<String> newItems = List.of(<#list data.items as item>"${mappedMCItemToRegistryName(item, false)}"<#if item?has_next>,</#if></#list>);

        List<String> existingItems = borders.contains(color)
                ? new ArrayList<>(borders.get(color))
                : new ArrayList<>();

        for (String item : newItems) {
            if (!existingItems.contains(item)) {
                existingItems.add(item);
                }
            }

        borders.set(color, existingItems);

        config.save();
        config.close();
	}
}