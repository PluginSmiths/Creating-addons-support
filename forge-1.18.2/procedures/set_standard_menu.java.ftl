File configFancyMenu = new File((FMLPaths.GAMEDIR.get().toString() + "config\\" + "fancymenu\\"));
for (File file : configFancyMenu.listFiles()) {
file.delete();
}