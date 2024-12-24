<#-- @formatter:off -->
(new Object(){
	public Entity getCarryingEntity(Entity entity) {
		if(entity instanceof Player _player) {
			CarryOnData data = CarryOnDataManager.getCarryData(_player);
			return data.getEntity();
		}
	}
}.getCarryingEntity(${input$entity}))
<#-- @formatter:on -->