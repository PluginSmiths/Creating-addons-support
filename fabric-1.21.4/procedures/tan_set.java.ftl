{
ITemperature temp${field$set} = ${input$entity} instanceof Player _pl ? TemperatureHelper.getTemperatureForPlayer(_pl) : null;
temp${field$set}.set${field$set}(${input$number});
}