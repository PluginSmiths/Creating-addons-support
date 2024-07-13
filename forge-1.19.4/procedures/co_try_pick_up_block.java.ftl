if (${input$entity} instanceof ServerPlayer _ServerPlayer) {
if (world instanceof Level _level) {
PickupHandler.tryPickUpBlock(_ServerPlayer, new BlockPos((int)${input$X},(int) ${input$Y},(int) ${input$Z}), _level, null);
}
}