import os
import subprocess

processes = subprocess.check_output(['tasklist'], shell=True, universal_newlines=True).splitlines()
list = ["javaw.exe"]
javaw_processes = [process for process in processes if list in process]

for process in javaw_processes:
    process_id = process.split()[0]
    try:
        os.system(f"taskkill /F /PID {process_id}")
        print(f"Process {process_id} stopped.")
    except Exception as e:
        print(f"Error: {process_id}: {e}")
