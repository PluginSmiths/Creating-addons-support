File RPDD${field$list} = new File(FMLPaths.GAMEDIR.get().toString(), File.separator + "${field$list}");
if (RPDD${field$list}.exists() && RPDD${field$list}.isDirectory()) {
File[] files = RPDD${field$list}.listFiles();
for (File file : files) {
if (file.isFile() && file.getName().contains("${input$name}")) {file.delete();}}