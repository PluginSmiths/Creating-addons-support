<#-- @formatter:off -->
(new Object(){
	public BlockState getCarryingBlock(Entity entity) {
		CarryOnData data = entity instanceof Player _pl013 ? CarryOnDataManager.getCarryData(_pl013) : null;
		return data.getBlock();
	}
}.getCarryingBlock(${input$entity}))
<#-- @formatter:on -->