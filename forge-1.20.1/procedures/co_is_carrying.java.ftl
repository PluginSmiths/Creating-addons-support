<#-- @formatter:off -->
(new Object(){
	public boolean isCarrying(Entity entity) {
		if(entity instanceof Player _player) {
			CarryOnData data = CarryOnDataManager.getCarryData(_player);
			return data.isCarrying();
		}
	}
}.isCarrying(${input$entity}))
<#-- @formatter:on -->