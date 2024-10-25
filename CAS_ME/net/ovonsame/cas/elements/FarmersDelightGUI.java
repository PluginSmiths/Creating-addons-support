package net.ovonsame.cas.elements;

import net.mcreator.element.parts.MItemBlock;
import net.mcreator.minecraft.ElementUtil;
import net.mcreator.ui.MCreator;
import net.mcreator.ui.component.util.AdaptiveGridLayout;
import net.mcreator.ui.component.util.ComponentUtils;
import net.mcreator.ui.component.util.PanelUtils;
import net.mcreator.ui.init.L10N;
import net.mcreator.ui.laf.themes.Theme;
import net.mcreator.ui.minecraft.SoundSelector;
import net.mcreator.ui.modgui.ModElementGUI;
import net.mcreator.ui.validation.AggregatedValidationResult;
import net.mcreator.ui.validation.ValidationGroup;
import net.mcreator.ui.validation.validators.MCItemHolderValidator;
import net.mcreator.workspace.elements.ModElement;
import net.ovonsame.cas.recipemakers.FarmersDelightCookingRecipemaker;
import net.ovonsame.cas.recipemakers.FarmersDelightCuttingRecipemaker;
import javax.swing.*;
import javax.swing.border.TitledBorder;
import java.awt.*;
import java.util.Locale;
import java.util.Objects;

public class FarmersDelightGUI extends ModElementGUI<FarmersDelight> {
    private final ValidationGroup page1group = new ValidationGroup();
    private final ValidationGroup page2group = new ValidationGroup();
    private AggregatedValidationResult validresult;

    private final CardLayout recipesPanelLayout = new CardLayout();
    private final JPanel recipesPanel = new JPanel(recipesPanelLayout);
    private final JComboBox<String> recipeType = new JComboBox<>(new String[] { "Cutting", "Cooking"});

    private FarmersDelightCuttingRecipemaker cuttingMaker;
    private final JPanel cuttingpanel = new JPanel(new AdaptiveGridLayout(-1, 2, 10, 2));
    private final JSpinner chance = new JSpinner(new SpinnerNumberModel(1, 1, 5, 1));
    private final JComboBox<String> action = new JComboBox<>(new String[] {"pickaxe_dig", "axe_strip", "axe_dig"});
    private final SoundSelector sound = new SoundSelector(mcreator);

    private FarmersDelightCookingRecipemaker cookingMaker;
    private final JPanel cookingpanel = new JPanel(new AdaptiveGridLayout(-1, 2, 10, 2));
    private final JSpinner cookingxp = new JSpinner(new SpinnerNumberModel(1, 1, 500, 1));
    private final JSpinner cookingtime = new JSpinner(new SpinnerNumberModel(1, 1, 200, 1));
    private final JComboBox<String> cookingtab = new JComboBox<>(new String[] {"meals", "drinks", "misc"});


    public FarmersDelightGUI(MCreator mcreator, ModElement modElement, boolean editingMode) {
        super(mcreator, modElement, editingMode);
        this.initGUI();
        super.finalizeGUI();
    }

    @Override protected void initGUI() {
        cuttingMaker = new FarmersDelightCuttingRecipemaker(mcreator, ElementUtil::loadBlocksAndItemsAndTags,ElementUtil::loadBlocksAndItems);
        cuttingMaker.setOpaque(false);
        cookingMaker = new FarmersDelightCookingRecipemaker(mcreator, ElementUtil::loadBlocksAndItemsAndTags,ElementUtil::loadBlocksAndItems);
        cookingMaker.setOpaque(false);

        JPanel pane5 = new JPanel(new BorderLayout(10, 10));
        recipesPanel.add(PanelUtils.totalCenterInPanel(cuttingMaker),"cutting");
        recipesPanel.add(PanelUtils.totalCenterInPanel(cookingMaker),"cooking");
        recipesPanel.setOpaque(false);

        JPanel recwrap = ComponentUtils.applyPadding(recipesPanel, 70, true, true, true, true);
        recwrap.setBorder(BorderFactory.createTitledBorder(
                BorderFactory.createLineBorder(Theme.current().getForegroundColor(), 1),
                L10N.t("elementgui.fdrecipe.definition"), TitledBorder.LEADING, TitledBorder.DEFAULT_POSITION, getFont(),
                Theme.current().getForegroundColor()));

        JPanel northPanel = new JPanel(new AdaptiveGridLayout(-1, 1, 10, 2));
        northPanel.setOpaque(false);

        JPanel typePanel = new JPanel(new AdaptiveGridLayout(-1, 2, 10, 2));
        typePanel.setOpaque(false);
        typePanel.add(L10N.label("elementgui.fdcutting.type"));
        typePanel.add(this.recipeType);
        northPanel.add(typePanel);

        cuttingpanel.setOpaque(false);
        cuttingpanel.add(L10N.label("elementgui.fdcutting.chance"));
        cuttingpanel.add(this.chance);
        cuttingpanel.add(L10N.label("elementgui.fdcutting.sound"));
        cuttingpanel.add(this.sound);
        cuttingpanel.add(L10N.label("elementgui.fdcutting.action"));
        cuttingpanel.add(this.action);

        cookingpanel.setOpaque(false);
        cookingpanel.add(L10N.label("elementgui.fdcooking.time"));
        cookingpanel.add(this.cookingtime);
        cookingpanel.add(L10N.label("elementgui.fdcooking.xp"));
        cookingpanel.add(this.cookingxp);
        cookingpanel.add(L10N.label("elementgui.fdcooking.tab"));
        cookingpanel.add(this.cookingtab);
        northPanel.add(cuttingpanel);
        northPanel.add(cookingpanel);

        cuttingMaker.cb1.setValidator(new MCItemHolderValidator(cuttingMaker.cb1));
        page1group.addValidationElement(cuttingMaker.cb1);
        cuttingMaker.cb2.setValidator(new MCItemHolderValidator(cuttingMaker.cb2));
        page1group.addValidationElement(cuttingMaker.cb2);

        cookingMaker.cb1.setValidator(new MCItemHolderValidator(cookingMaker.cb1));
        page2group.addValidationElement(cookingMaker.cb1);
        cookingMaker.cb6.setValidator(new MCItemHolderValidator(cookingMaker.cb6));
        page2group.addValidationElement(cookingMaker.cb6);



        pane5.setOpaque(false);
        pane5.add(PanelUtils.totalCenterInPanel(PanelUtils.westAndEastElement(PanelUtils.pullElementUp(northPanel), PanelUtils.pullElementUp(recwrap), 15, 15)));
        recipeType.addActionListener(e -> updateUIFields());
        
        updateUIFields();

        addPage(pane5);
    }

    private void updateUIFields() {
        String recipeTypeValue = (String) recipeType.getSelectedItem();
        if (recipeTypeValue != null) {
            boolean isRecipecutting = recipeTypeValue.equals("Cutting");
            boolean isRecipecooking = recipeTypeValue.equals("Cooking");
            cuttingpanel.setVisible(isRecipecutting);
            cookingpanel.setVisible(isRecipecooking);
            recipesPanelLayout.show(recipesPanel, recipeTypeValue.toLowerCase(Locale.ENGLISH));
        }
    }

    @Override protected AggregatedValidationResult validatePage(int page) {
        switch ((String) Objects.requireNonNull(recipeType.getSelectedItem())){

            case "Cutting" -> {
                validresult = new AggregatedValidationResult(new ValidationGroup[]{this.page1group});
            }
            case "Cooking" -> {
                validresult = new AggregatedValidationResult(new ValidationGroup[]{this.page2group});
            }
        }
    return validresult;
    }

    @Override public void openInEditingMode(FarmersDelight recipe) {
        recipeType.setSelectedItem(recipe.recipeType);

        switch (recipe.recipeType) {
            case "Cutting" -> {
                this.cuttingMaker.cb1.setBlock(recipe.cuttinginput);
                this.cuttingMaker.cb2.setBlock(recipe.cuttingoutput);
                this.cuttingMaker.sp.setValue(recipe.count);
                this.chance.setValue(recipe.cuttingchance);
                this.action.setSelectedItem(recipe.cuttingaction);
                this.sound.setSound(recipe.cuttingsound);
            }
            case "Cooking" -> {
                this.cookingMaker.cb1.setBlock(recipe.cookinginput[1]);
                this.cookingMaker.cb2.setBlock(recipe.cookinginput[2]);
                this.cookingMaker.cb3.setBlock(recipe.cookinginput[3]);
                this.cookingMaker.cb4.setBlock(recipe.cookinginput[4]);
                this.cookingMaker.cb5.setBlock(recipe.cookinginput[5]);

                this.cookingMaker.cb6.setBlock(recipe.cookingoutput);
                this.cookingMaker.sp.setValue(recipe.count);

                this.cookingtab.setSelectedItem(recipe.cookingbook);
                this.cookingxp.setValue(recipe.cookingxp);
                this.cookingtime.setValue(recipe.cookingtime);
            }
        }
    }

    @Override public FarmersDelight getElementFromGUI() {
        FarmersDelight recipe = new FarmersDelight(modElement);
        recipe.recipeType = (String) Objects.requireNonNull(recipeType.getSelectedItem());

        switch (recipe.recipeType) {
            case "Cutting" -> {
                recipe.cuttinginput = this.cuttingMaker.cb1.getBlock();
                recipe.cuttingoutput = this.cuttingMaker.cb2.getBlock();
                recipe.count = (int) this.cuttingMaker.sp.getValue();
                recipe.cuttingchance = (int) this.chance.getValue();
                recipe.cuttingaction = (String) this.action.getSelectedItem();
                recipe.cuttingsound =  this.sound.getSound();


            }
            case "Cooking" -> {
                MItemBlock[] cookinginput = new MItemBlock[9];
                recipe.cookingoutput = this.cookingMaker.cb6.getBlock();
                if (!cookingMaker.cb1.getBlock().isEmpty()) {
                    cookinginput[1] = this.cookingMaker.cb1.getBlock();
                }
                if (!cookingMaker.cb2.getBlock().isEmpty()) {
                    cookinginput[2] = this.cookingMaker.cb2.getBlock();
                }
                if (!cookingMaker.cb3.getBlock().isEmpty()) {
                    cookinginput[3] = this.cookingMaker.cb3.getBlock();
                }
                if (!cookingMaker.cb4.getBlock().isEmpty()) {
                    cookinginput[4] = this.cookingMaker.cb4.getBlock();
                }
                if (!cookingMaker.cb5.getBlock().isEmpty()) {
                    cookinginput[5] = this.cookingMaker.cb5.getBlock();
                }
                recipe.cookinginput = cookinginput;

                recipe.count = (int) this.cookingMaker.sp.getValue();
                recipe.cookingxp = (int) this.cookingxp.getValue();
                recipe.cookingtime = (int) this.cookingtime.getValue();
                recipe.cookingbook = (String) this.cookingtab.getSelectedItem();

            }
        }
        return recipe;
    }

    }


