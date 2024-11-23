import zipfile
import os
import rarfile
import Workspace

def create_archive(source_folder, destination_folder, zip_filename):
    try:
        zip_path = os.path.join(destination_folder, zip_filename)
        with zipfile.ZipFile(zip_path, 'w', zipfile.ZIP_DEFLATED) as zipf:
            for root, _, files in os.walk(source_folder):
                for file in files:
                    file_path = os.path.join(root, file)
                    zip.write(file_path, arcname=file_path[len(source_folder) + 1:])
        print(f"Archive created: {zip_path}")
    except FileNotFoundError:
        print(f"Folder {source_folder} did not found.")
    except Exception as e:
        print(f"Error on creating archive: {e}")

s = input()

if "ME" in s:
    create_archive(Workspace.get_repository_path() + "CAS_ME//", Workspace.get_desktop_path(), "CAS Mod Elements")
elif "API" in s:
    create_archive(Workspace.get_repository_path() + "CAS_APIS//", Workspace.get_desktop_path(), "CAS API's")
elif "P" in s:
    create_archive(Workspace.get_repository_path() + "CAS_P//", Workspace.get_desktop_path(), "CAS Procedures")


