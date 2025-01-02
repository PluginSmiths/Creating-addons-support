<#-- @formatter:off -->
(new Object(){
	public Entity getCarryingEntity(Entity entity) {
		CarryOnData data = entity instanceof Player _player ? CarryOnDataManager.getCarryData(_player) : null;
		return data.getEntity();
	}
}.getCarryingEntity(${input$entity}))
<#-- @formatter:on -->