File file = new File(${input$location}, File.separator + ${input$name} + ".zip");
try {
new Object() {
public static void unzipFile(File fileToUnzip, String destDir) throws IOException {
File _dir = new File(destDir);
if (!_dir.exists())
_dir.mkdirs();
try (ZipInputStream _zipIn = new ZipInputStream(new FileInputStream(fileToUnzip))) {
ZipEntry _entry = _zipIn.getNextEntry();
while (_entry != null) {
String filePath = destDir + File.separator + _entry.getName();
if (!_entry.isDirectory())
extractFile(_zipIn, filePath);
else
new File(filePath).mkdirs();
_zipIn.closeEntry();
_entry = _zipIn.getNextEntry();
}
}
}

private static void extractFile(ZipInputStream zipIn, String filePath) throws IOException {
try (BufferedOutputStream bos = new BufferedOutputStream(new FileOutputStream(filePath))) {
byte[] bytesIn = new byte[4096];
int read;
while ((read = zipIn.read(bytesIn)) != -1)
bos.write(bytesIn, 0, read);
}
}
}.unzipFile(file, (FMLPaths.GAMEDIR.get().toString() + "config\\" + "fancymenu\\"));
} catch (IOException e) {
${JavaModName}.LOGGER.error(e);
}