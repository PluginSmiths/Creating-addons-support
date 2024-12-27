if(${input$player} instanceof Player _player) {
	CorpseEntity corpse = CorpseEntity.createFromDeath(_player, Death.fromPlayer(_player);
	corpse.setPos(${input$X}, ${input$Y}, ${input$Z});
	corpse.setIsSkeleton(${input$skeleton});
}