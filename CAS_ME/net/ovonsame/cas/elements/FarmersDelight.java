package net.ovonsame.cas.elements;

import net.mcreator.element.GeneratableElement;
import net.mcreator.element.parts.MItemBlock;
import net.mcreator.element.parts.Sound;
import net.mcreator.workspace.elements.ModElement;
import net.mcreator.workspace.references.ModElementReference;

import java.lang.*;

public class FarmersDelight extends GeneratableElement {
    public String recipeType;

    //common fields
    public int count;

    //cutting fields
    public MItemBlock cuttinginput;
    public MItemBlock cuttingoutput;
    public int cuttingchance;
    public String cuttingaction;
    public Sound cuttingsound;

    //cooking fields
    public MItemBlock cookingoutput;
    @ModElementReference public MItemBlock[] cookinginput;
    public int cookingtime;
    public int cookingxp;
    public String cookingbook;

    public FarmersDelight(ModElement element) {
        super(element);
    }

    @Override public void setModElement(ModElement element) {
        super.setModElement(element);
    }

}