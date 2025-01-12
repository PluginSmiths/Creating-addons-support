{
CorpseEntity corpse = ${input$player} instanceof Player _pl023 ? CorpseEntity.createFromDeath(_pl023, Death.fromPlayer(_pl023) : null;
corpse.setPos(${input$X}, ${input$Y}, ${input$Z});
corpse.setIsSkeleton(${input$skeleton});
}