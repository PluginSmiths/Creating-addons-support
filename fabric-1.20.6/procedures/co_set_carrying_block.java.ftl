{
CarryOnData data = entity instanceof Player _player ? CarryOnDataManager.getCarryData(_player) : null;
data.setBlock(${input$block}.getDefaultBlockSate());
}