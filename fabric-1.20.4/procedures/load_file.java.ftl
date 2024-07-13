File file${field$list}RP = new File(${input$location});
try {
org.apache.commons.io.FileUtils.moveFile(file${field$list}RP, new File((FMLPaths.GAMEDIR.get().toString() + "${field$list}")));
} catch (IOException e) {
${JavaModName}.LOGGER.error(e);
}