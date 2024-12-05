if (${input$entity} instanceof ServerPlayer _ent) {
BlockPos _bpos = BlockPos.containing(${input$X}, ${input$Y}, ${input$Z});
NetworkHooks.openScreen((ServerPlayer) _ent, new MenuProvider() {
@Override
public Component getDisplayName() {
return Component.literal(" ");
}
@Override
public AbstractContainerMenu createMenu(int id, Inventory inventory, Player player) {
return new ${field$gui}(id, inventory, new FriendlyByteBuf(Unpooled.buffer()).writeBlockPos(_bpos));
}
}, _bpos);
}