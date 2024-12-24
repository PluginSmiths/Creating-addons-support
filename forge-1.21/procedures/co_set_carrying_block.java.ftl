<#-- @formatter:off -->
{
	if(${input$entity} instanceof Player _player) {
		CarryOnData data = CarryOnDataManager.getCarryData(_player);
		data.setBlock(${input$block}.getDefaultBlockSate());
	}
}
<#-- @formatter:on -->