File RPTD${field$list} = new File((FMLPaths.GAMEDIR.get().toString() + "${field$list}"));
for (File file : RPTD${field$list}.listFiles()) {
file.delete();
}