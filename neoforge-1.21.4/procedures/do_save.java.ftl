try{
DefaultOptions.saveDefaultOptions(DefaultOptionsCategory.${field$name});
} catch (DefaultOptionsHandlerException e) {
${JavaModName}.LOGGER.error(e.getMessage());
}