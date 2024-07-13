${input$entity} ServerPlayer; {
BlockPos _bpos = BlockPos.containing(x, y, z);
NetworkHooks.openScreen((ServerPlayer) _ent, new MenuProvider() {
@Override
public Component getDisplayName() {
return Component.literal("CookingPot");
}

@Override
public AbstractContainerMenu createMenu(int id, Inventory inventory, Player player) {
return new CookingPotMenu(id, inventory, new FriendlyByteBuf(Unpooled.buffer()).writeBlockPos(_bpos));
}
}, _bpos);
}