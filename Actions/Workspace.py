import os
import platform
from pathlib import Path
import win32com.client

def get_desktop_path():
    system = platform.system()
    if system == "Windows":
        try:
            shell = win32com.client.Dispatch("WScript.Shell")
            desktop_path = shell.SpecialFolders("Desktop")
            return desktop_path
        except Exception as e:
            print(f"Error on Windows: {e}")
            return None

    elif system == "Linux":
        xdg_data_home = os.environ.get("XDG_DATA_HOME")
        if xdg_data_home:
            desktop_path = os.path.join(xdg_data_home, "Desktop")
            return desktop_path
        else:
            desktop_path = os.path.expanduser("~/Desktop")
            return desktop_path
    else:
        print("OS not supported.")
        return None


def get_repository_path():
    path = Path(os.path.dirname(os.path.abspath(__file__)))
    repo_path = path.parent
    if "GitHub" in str(repo_path.parent):
        return repo_path
    else:
        return None
print(get_repository_path())



