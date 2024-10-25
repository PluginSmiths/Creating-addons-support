package net.ovonsame.cas.parts;
import net.mcreator.element.ModElementType;
import net.ovonsame.cas.elements.*;

import static net.mcreator.element.ModElementTypeLoader.register;

public class PluginElementTypes {
    public static ModElementType<?> FARMERSDELIGHT;

    public static void load() {
        FARMERSDELIGHT = register(
                new ModElementType<>("farmersdelight", (Character) null, FarmersDelightGUI::new, FarmersDelight.class)
        );


    }

}