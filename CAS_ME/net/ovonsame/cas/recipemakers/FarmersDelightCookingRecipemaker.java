package net.ovonsame.cas.recipemakers;

import net.mcreator.io.FileIO;
import net.mcreator.minecraft.MCItem;
import net.mcreator.ui.MCreator;
import net.mcreator.ui.component.ImagePanel;
import net.mcreator.ui.component.util.ComponentUtils;
import net.mcreator.ui.dialogs.file.FileDialogs;
import net.mcreator.ui.init.UIRES;
import net.mcreator.ui.minecraft.MCItemHolder;

import javax.swing.*;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.File;

public class FarmersDelightCookingRecipemaker extends JPanel{
    public final JSpinner sp;
    public final MCItemHolder cb1;
    public final MCItemHolder cb2;
    public final MCItemHolder cb3;
    public final MCItemHolder cb4;
    public final MCItemHolder cb5;
    public final MCItemHolder cb6;

    private final JButton export = new JButton(UIRES.get("18px.export"));
    public FarmersDelightCookingRecipemaker(MCreator mcreator, MCItem.ListProvider itemsWithTags, MCItem.ListProvider items) {
        ImagePanel ip = new ImagePanel(UIRES.get("recipe.cooking_pot").getImage());

        ip.fitToImage();
        ip.setLayout(null);

        cb1 = new MCItemHolder(mcreator, itemsWithTags, true);
        cb2 = new MCItemHolder(mcreator, itemsWithTags, true);
        cb3 = new MCItemHolder(mcreator, itemsWithTags, true);
        cb4 = new MCItemHolder(mcreator, itemsWithTags, true);
        cb5 = new MCItemHolder(mcreator, itemsWithTags, true);
        cb6 = new MCItemHolder(mcreator, items);

        sp = new JSpinner(new SpinnerNumberModel(1, 1, 64, 1));
        sp.setBounds(144, 32+(32*3)+(8*2), 48, 17);
        ip.add(sp);

        JLabel drop = new JLabel("1");

        export.setContentAreaFilled(false);
        export.setMargin(new Insets(0, 0, 0, 0));
        export.setBounds(192, 16, 24, 24);
        export.setFocusPainted(false);
        export.setCursor(new Cursor(Cursor.HAND_CURSOR));
        ip.add(export);
        export.addActionListener(event -> {
            export.setVisible(false);
            cb1.setValidationShownFlag(false);
            cb2.setValidationShownFlag(false);
            cb3.setValidationShownFlag(false);
            cb4.setValidationShownFlag(false);
            cb5.setValidationShownFlag(false);
            cb6.setValidationShownFlag(false);
            sp.setVisible(false);
            drop.setText(sp.getValue().toString());
            drop.setVisible(true);
            setCursor(new Cursor(Cursor.WAIT_CURSOR));
            BufferedImage im = new BufferedImage(ip.getWidth(), ip.getHeight(), BufferedImage.TYPE_INT_ARGB);
            ip.paint(im.getGraphics());
            File fi = FileDialogs.getSaveDialog(null, new String[] { ".png" });
            if (fi != null)
                FileIO.writeImageToPNGFile(im, fi);
            setCursor(new Cursor(Cursor.DEFAULT_CURSOR));
            export.setVisible(true);
            cb1.setValidationShownFlag(true);
            cb2.setValidationShownFlag(true);
            cb3.setValidationShownFlag(true);
            cb4.setValidationShownFlag(true);
            cb5.setValidationShownFlag(true);
            cb6.setValidationShownFlag(true);

            sp.setVisible(true);
            drop.setVisible(false);
        });

        drop.setBounds(112, 208, 38, 17);
        drop.setVisible(false);
        drop.setForeground(Color.white);
        ip.add(ComponentUtils.deriveFont(drop, 16));

        cb1.setBounds(48, 32, 32, 32);
        cb2.setBounds(48, 32+(32)+(8), 32, 32);
        cb3.setBounds(48, 32+(32*2)+(8*2), 32, 32);
        cb4.setBounds(48, 32+(32*3)+(8*3), 32, 32);
        cb5.setBounds(48, 32+(32*4)+(8*4), 32, 32);
        cb6.setBounds(144, 32+(32*2)+(8*2), 32, 32);

        ip.add(cb1);
        ip.add(cb2);
        ip.add(cb3);
        ip.add(cb4);
        ip.add(cb5);
        ip.add(cb6);

        add(ip);
        setPreferredSize(new Dimension(256, 256));
    }


    @Override public void setEnabled(boolean enabled) {
        super.setEnabled(enabled);
        cb1.setEnabled(enabled);
        cb2.setEnabled(enabled);
        sp.setEnabled(enabled);
        export.setEnabled(enabled);
    }

}
