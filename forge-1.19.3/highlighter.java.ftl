package ${package}.superstyled;

import com.anthonyhilyard.highlighter.Highlighter;

@Mixin(Highlighter.class)
public abstract class ${name}Highlighter {
    private static final ResourceLocation TEXTURE = ResourceLocation.parse("${modid}:textures/screens/${data.highlighter_texture}.png");
    private static final List<ItemStack> ITEMS = List.of(<#list data.items as item>new ItemStack(${item})<#if item?has_next>,</#if></#list>);

    @Redirect(method = "render", at = @At("HEAD"))
    private static void render(PoseStack poseStack, ItemStack item, int x, int y, CallbackInfo ci) {
        if(ITEMS.contains(item))
            RenderSystem.setShaderTexture(0, TEXTURE);
    }
}