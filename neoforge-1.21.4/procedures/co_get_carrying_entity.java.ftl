<#-- @formatter:off -->
(new Object(){
	public Entity getCarryingEntity(Entity entity) {
		CarryOnData data = entity instanceof Player _pl014 ? CarryOnDataManager.getCarryData(_pl014) : null;
		return data.getEntity();
	}
}.getCarryingEntity(${input$entity}))
<#-- @formatter:on -->