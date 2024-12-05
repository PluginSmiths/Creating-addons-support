<#-- @formatter:off -->
(new Object(){
	public boolean getCarrying(Entity entity, CarryOnData.CarryType type) {
		if(entity instanceof Player _player) {
			CarryOnData data = CarryOnDataManager.getCarryData(_player);
			return data.isCarrying(type);
		}
	}
}.getCarrying(${input$entity}, CarryOnData.CarryType.${field$name}))
<#-- @formatter:on -->