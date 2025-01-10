<#-- @formatter:off -->
(new Object(){
	public boolean isCarrying(Entity entity) {
		CarryOnData data = entity instanceof Player _pl015 ? CarryOnDataManager.getCarryData(_pl015) : null;
		return data.isCarrying();
	}
}.isCarrying(${input$entity}))
<#-- @formatter:on -->