{
File file_${field$for}_${field$name} = new File("");
com.google.gson.JsonObject JSON_${field$for}_${field$name} = new com.google.gson.JsonObject();
file_${field$for}_${field$name} = new File((FMLPaths.GAMEDIR.get().toString() + "config/realmrpg/quests/"), File.separator + "${field$for}.json");
if (file_${field$for}_${field$name}.exists()) {
{
try {
BufferedReader bufferedReader = new BufferedReader(new FileReader(file_${field$for}_${field$name}));
StringBuilder jsonstringbuilder = new StringBuilder();
String line;
while ((line = bufferedReader.readLine()) != null) {
jsonstringbuilder.append(line);
}
bufferedReader.close();
JSON_${field$for}_${field$name} = new com.google.gson.Gson().fromJson(jsonstringbuilder.toString(), com.google.gson.JsonObject.class);
JSON_${field$for}_${field$name}.addProperty("questType_${field$rarity}${input$id}", "${field$type}");
JSON_${field$for}_${field$name}.addProperty("questText_${field$rarity}${input$id}", ${input$will_say});
JSON_${field$for}_${field$name}.addProperty("questRewardText_${field$rarity}${input$id}", ${input$say_complete});
JSON_${field$for}_${field$name}.addProperty("questTarget_${field$rarity}${input$id}", ${input$required});
JSON_${field$for}_${field$name}.addProperty("questReward_${field$rarity}${input$id}", ${input$reward});
JSON_${field$for}_${field$name}.addProperty("questSpecialEvents_${field$rarity}${input$id}", "${field$color}");
JSON_${field$for}_${field$name}.addProperty("questCustomName_${field$rarity}${input$id}", ${input$custom_name});
JSON_${field$for}_${field$name}.addProperty("questTaskCustomName_${field$rarity}${input$id}", ${input$task_custom_name});
JSON_${field$for}_${field$name}.addProperty("questTargetCustomName_${field$rarity}${input$id}", ${input$target_custom_name});
JSON_${field$for}_${field$name}.addProperty("questTargetEnchanted_${field$rarity}${input$id}", false);
JSON_${field$for}_${field$name}.addProperty("questTargetMin_${field$rarity}${input$id}", ${input$min});
JSON_${field$for}_${field$name}.addProperty("questTargetMax_${field$rarity}${input$id}", ${input$maximum});
JSON_${field$for}_${field$name}.addProperty("questExp_${field$rarity}${input$id}", ${input$exp});
JSON_${field$for}_${field$name}.addProperty("commonQuestCount", (JSON_${field$for}_${field$name}.get("commonQuestCount").getAsDouble() + 1));
} catch (IOException e) {
e.printStackTrace();
}
}
{
com.google.gson.Gson mainGSONBuilderVariable = new com.google.gson.GsonBuilder().setPrettyPrinting().create();
try {
FileWriter fileWriter = new FileWriter(file_${field$for}_${field$name});
fileWriter.write(mainGSONBuilderVariable.toJson(JSON_${field$for}_${field$name}));
fileWriter.close();
} catch (IOException exception) {
exception.printStackTrace();
}
}
}
}