<#-- @formatter:off -->
(new Object(){
	public BlockState getCarryingBlock(Entity entity) {
		if(entity instanceof Player _player) {
			CarryOnData data = CarryOnDataManager.getCarryData(_player);
			return data.getBlock();
		}
	}
}.getCarryingBlock(${input$entity}))
<#-- @formatter:on -->