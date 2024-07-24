package net.ovonsame.cas.elements;

import net.mcreator.ui.minecraft.SoundSelector;
import net.mcreator.minecraft.ElementUtil;
import net.mcreator.ui.MCreator;
import net.mcreator.ui.component.util.PanelUtils;
import net.mcreator.ui.init.L10N;
import net.mcreator.ui.minecraft.MCItemHolder;
import net.mcreator.ui.modgui.ModElementGUI;
import net.mcreator.ui.validation.AggregatedValidationResult;
import net.mcreator.ui.validation.ValidationGroup;
import net.mcreator.ui.validation.validators.MCItemHolderValidator;
import net.mcreator.workspace.elements.ModElement;

import javax.swing.*;
import java.awt.*;

public class FarmersDelightCuttingGUI extends ModElementGUI<FarmersDelightCutting> {
    private final ValidationGroup page1group = new ValidationGroup();
    private final MCItemHolder input;
    private final MCItemHolder output;
    private final JSpinner count;
    private final JSpinner chance;
    private final JComboBox<String> action;
    private final SoundSelector sound;

    public FarmersDelightCuttingGUI(MCreator mcreator, ModElement modElement, boolean editingMode) {
        super(mcreator, modElement, editingMode);
        this.action = new JComboBox<>(new String[] {"pickaxe_dig", "axe_strip"});
        this.input = new MCItemHolder(mcreator, ElementUtil::loadBlocksAndItems);
        this.output = new MCItemHolder(mcreator, ElementUtil::loadBlocksAndItems);
        this.sound = new SoundSelector(mcreator);
        this.count = new JSpinner(new SpinnerNumberModel(1, 1, 64, 1));
        this.chance = new JSpinner(new SpinnerNumberModel(1, 1, 5, 1));
        this.initGUI();
        super.finalizeGUI();
    }

    protected void initGUI() {
        JPanel pane1 = new JPanel(new BorderLayout());
        pane1.setOpaque(false);
        JPanel mainPanel = new JPanel(new GridLayout(6, 1, 0, 2));
        mainPanel.setOpaque(false);

        mainPanel.add(L10N.label("elementgui.FarmersDelightCutting.input", new Object[0]));
        mainPanel.add(this.input);
        mainPanel.add(L10N.label("elementgui.FarmersDelightCutting.output", new Object[0]));
        mainPanel.add(this.output);
        mainPanel.add(L10N.label("elementgui.FarmersDelightCutting.count", new Object[0]));
        mainPanel.add(this.count);
        mainPanel.add(L10N.label("elementgui.FarmersDelightCutting.chance", new Object[0]));
        mainPanel.add(this.chance);
        mainPanel.add(L10N.label("elementgui.FarmersDelightCutting.action", new Object[0]));
        mainPanel.add(this.action);
        mainPanel.add(L10N.label("elementgui.FarmersDelightCutting.sound", new Object[0]));
        mainPanel.add(this.sound);


        input.setValidator(new MCItemHolderValidator(this.input));
        page1group.addValidationElement(this.input);
        output.setValidator(new MCItemHolderValidator(output));
        page1group.addValidationElement(this.output);

        pane1.add(PanelUtils.totalCenterInPanel(mainPanel));
        addPage(pane1);

    }

    protected AggregatedValidationResult validatePage(int page) {
        return new AggregatedValidationResult(new ValidationGroup[]{this.page1group});
    }

    public void openInEditingMode(FarmersDelightCutting recipe) {
        this.input.setBlock(recipe.input);
        this.count.setValue(recipe.count);
        this.chance.setValue(recipe.chance);
        this.output.setBlock(recipe.output);
        this.sound.setSound(recipe.sound);
        this.action.setSelectedItem(recipe.action);
    }

    public FarmersDelightCutting getElementFromGUI() {
        FarmersDelightCutting recipe = new FarmersDelightCutting(this.modElement);
        recipe.input = this.input.getBlock();
        recipe.count = (int) this.count.getValue();
        recipe.chance = (int) this.chance.getValue();
        recipe.output = this.output.getBlock();
        recipe.sound = this.sound.getSound();
        recipe.action = (String) this.action.getSelectedItem();
        return recipe;
    }
}
