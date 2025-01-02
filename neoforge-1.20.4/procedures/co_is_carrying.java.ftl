<#-- @formatter:off -->
(new Object(){
	public boolean isCarrying(Entity entity) {
		CarryOnData data = entity instanceof Player _player ? CarryOnDataManager.getCarryData(_player) : null;
		return data.isCarrying();
	}
}.isCarrying(${input$entity}))
<#-- @formatter:on -->