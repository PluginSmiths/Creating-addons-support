{
IThirst thirst${field$set} = ${input$entity} instanceof Player _pl ? ThirstHelper.getThirst(_pl) : null;
thirst${field$set}.set${field$set}(${input$number});
}