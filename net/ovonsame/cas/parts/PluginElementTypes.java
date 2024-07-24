package net.ovonsame.cas.parts;
import net.mcreator.element.ModElementType;
import net.ovonsame.cas.elements.*;

import static net.mcreator.element.ModElementTypeLoader.register;

public class PluginElementTypes {
    public static ModElementType<?> FARMERSDELIGHTCUTTING;

    public static void load() {
        FARMERSDELIGHTCUTTING = register(
                new ModElementType<>("farmersdelightcutting", (Character) null, FarmersDelightCuttingGUI::new, FarmersDelightCutting.class)
        );

    }

}