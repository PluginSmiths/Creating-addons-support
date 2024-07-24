package net.ovonsame.cas.elements;

import net.mcreator.element.GeneratableElement;
import net.mcreator.element.parts.MItemBlock;
import net.mcreator.element.parts.Sound;
import net.mcreator.workspace.elements.ModElement;
import java.lang.*;

public class FarmersDelightCutting extends GeneratableElement {
    public MItemBlock input;
    public MItemBlock output;
    public int count;
    public int chance;
    public String action;
    public Sound sound;
    public FarmersDelightCutting(ModElement element) {
        super(element);
    }

}