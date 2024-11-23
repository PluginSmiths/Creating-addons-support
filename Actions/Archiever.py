import zipfile
import os
import Workspace

def create_archive(source_folder, destination_folder, archive_filename):
    try:
        archive_path = os.path.join(destination_folder, archive_filename + ".zip")
        with zipfile.ZipFile(archive_path, 'w', zipfile.ZIP_DEFLATED) as zipf:
            for root, _, files in os.walk(source_folder):
                for file in files:
                    file_path = os.path.join(root, file)
                    relative_path = os.path.relpath(file_path, source_folder)
                    zipf.write(file_path, arcname=relative_path) 
        print(f"Archive created at: {archive_path}")
    except FileNotFoundError:
        print(f"Folder {source_folder} did not found.")
    except Exception as e:
        print(f"Error on creating archive: {e}")

s = input()

if "ME" in s:
    source = str(Workspace.get_repository_path()) + "//CAS_ME"
    create_archive(source, Workspace.get_desktop_path(), "CAS Mod Elements")
elif "API" in s:
    source = str(Workspace.get_repository_path()) + "//CAS_APIS"
    create_archive(source, Workspace.get_desktop_path(), "CAS API's")
elif "P" in s:
    source = str(Workspace.get_repository_path()) + "//CAS_P"
    create_archive(source, Workspace.get_desktop_path(), "CAS Procedures")
else:
    print("Unknown archive type.")

