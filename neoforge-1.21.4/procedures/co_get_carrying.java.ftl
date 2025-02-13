<#-- @formatter:off -->
(new Object(){
	public boolean getCarrying(Entity entity, CarryOnData.CarryType type) {
		CarryOnData data = entity instanceof Player _pl012 ? CarryOnDataManager.getCarryData(_pl012) : null;
		return data.isCarrying(type);
	}
}.getCarrying(${input$entity}, CarryOnData.CarryType.${field$name}))
<#-- @formatter:on -->