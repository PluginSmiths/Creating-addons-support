import os
import subprocess

process_names = ["javaw.exe"]

try:
    processes_output = subprocess.check_output(['tasklist'], shell=True, universal_newlines=True)
    running_processes = processes_output.splitlines()
except subprocess.CalledProcessError as e:
    print(f"Error on getting processes list: {e}")

for process_name in process_names:
    matching_processes = [p for p in running_processes if process_name in p]

    for process in matching_processes:
        try:
            process_id = process.split()[1]
            os.system(f"taskkill /F /PID {process_id}")
            print(f"Process '{process_name}' with PID {process_id} stopped.")
        except Exception as e:
            print(f"Error on '{process_name}': {e}")

#Closes all programms from "process_names".
