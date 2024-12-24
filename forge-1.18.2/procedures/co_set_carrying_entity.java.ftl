<#-- @formatter:off -->
{
	if(${input$player}instanceof Player _player) {
		CarryOnData data = CarryOnDataManager.getCarryData(_player);
		data.setEntity(${input$entity});
	}
}
<#-- @formatter:on -->