<#-- @formatter:off -->
(new Object(){
	public BlockState getCarryingBlock(Entity entity) {
		CarryOnData data = entity instanceof Player _player ? CarryOnDataManager.getCarryData(_player) : null;
		return data.getBlock();
	}
}.getCarryingBlock(${input$entity}))
<#-- @formatter:on -->