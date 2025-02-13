{
var key = ForgeRegistries.ITEMS.getKey(${input$item}).toString().split(":", 2);
new InventoryManager().getCosArmorInventory(${input$entity}.getUUID()).setHidden(key[0], key[1], ${input$hidden});
}