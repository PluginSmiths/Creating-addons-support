String[] parts = ForgeRegistries.BLOCKS.getKey(${input$block}).toString().split(":");
BlockStressDefaults.setDefault${field$name}(new ResourceLocation(parts[0], parts[1]), ${input$number});