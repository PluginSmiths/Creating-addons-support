CorpseEntity corpse = ${input$player} instanceof Player _player ? CorpseEntity.createFromDeath(_player, Death.fromPlayer(_player) : null;
corpse.setPos(${input$X}, ${input$Y}, ${input$Z});
corpse.setIsSkeleton(${input$skeleton});