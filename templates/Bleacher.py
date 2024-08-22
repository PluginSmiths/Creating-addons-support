from PIL import Image
import os

def bleach(folder):
  for filename in os.listdir(folder):
    if filename.endswith(".png"):
      filepath = os.path.join(folder, filename)
      try:
        image = Image.open(filepath).convert("L")
        image.save(filepath)
      except Exception as e:
        print(f"Error on file {filename}: {e}")

if __name__ == "__main__":
  bleach("C:\\Users\\Desktop\\templates")
# Changes in the image may not be accurate and must be manually corrected!
