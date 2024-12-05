File RPD${field$list} = new File(FMLPaths.GAMEDIR.get().toString(), File.separator + "${field$list}");
if (RPD${field$list}.exists() && RPD${field$list}.isDirectory() && RPD${field$list}.list().length >= 1) {
${statement$do}
}