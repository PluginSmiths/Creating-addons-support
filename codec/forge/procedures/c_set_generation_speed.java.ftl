String[] parts = ForgeRegistries.BLOCKS.getKey(${input$block}).toString().split(":");
Supplier<Couple<Integer>> speedProvider${input$from}${input$to} = () -> new Couple<>(${input$from}, ${input$to});
BlockStressDefaults.setGeneratorSpeed(new ResourceLocation(parts[0], parts[1]), speedProvider);