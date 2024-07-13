String IUUID${field$var_name} = ${input$ID};
UUID LUUID${field$var_name} = UUID.fromString(IUUID${field$var_name});
KeyItem.setLockId(${input$item}, LUUID${field$var_name});