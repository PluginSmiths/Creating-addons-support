File RPDD${field$list} = new File(FMLPaths.GAMEDIR.get().toString(), File.separator + "${field$list}");
if (RPDD${field$list}.exists() && RPDD${field$list}.isDirectory()) {
File[] filesRPDD${field$list} = RPDD${field$list}.listFiles();
for (File file : filesRPDD${field$list}) {
if (file.isFile() && file.getName().contains("${input$name}")) {
${statement$do}
}
}
}