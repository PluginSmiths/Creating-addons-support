from googletrans import Translator
import os

def translate(text, lang):
    translator = Translator()
    translator = translator.translate(text, dest=lang)
    return translator.text
def translate_file(input_file, output_file, target_language):
    translator = Translator()
    with open(input_file, 'r', encoding='utf-8') as infile:
        with open(output_file, 'w', encoding='utf-8') as outfile:
            for line in infile:
                if '=' in line:
                    parts = line.split('=', 1)
                    translated_text = translator.translate(parts[1].strip(), dest=target_language).text
                    outfile.write(f"{parts[0]}={translated_text}\n")
                else:
                    outfile.write(line)
langs = ["ar_SA", "cs_CZ", "de_DE", "es_AR", "es_CL", "es_ES", "fa_IR", "fr_FR", "he_IL", "hu_HU", "it_IT", "ja_JP",
        "ko_KR", "nl_NL", "no_NO", "pl_PL", "pt_BR", "pt_PT", "ro_RO", "ru_RU", "sv_SE", "tr_TR", "uk_UA", "vi_VN"]
for text in langs:
    file = "C:\\Users\\Desktop\\texts_" + text + ".properties"
    main_file = "C:\\Users\\Desktop\\texts.properties"
    if not os.path.exists(file):
        translate_file(main_file, file, text)

'''The code requires a lot of internet and computing, so it may not always work!'''
'''The translation may not be accurate!'''
