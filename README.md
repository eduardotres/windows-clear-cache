# Windows Cleaning Script

This script automates the cleanup of temporary files, prefetch data, and the recycle bin on a Windows system. It also flushes the DNS cache.  

## Features
- Removes temporary files from the user's local `Temp` folder.
- Clears the `Windows\Temp` and `Windows\Prefetch` folders.
- Flushes the DNS cache.
- Empties the system recycle bin.
- Ensures the script is run with administrator privileges.

## Prerequisites
- A Windows operating system.
- Administrative privileges to execute the script.

## How to Use
1. **Download the Script**: Clone the repository or download the `.bat` file.
2. **Edit the Script**: Replace the `set USER=user` line with your actual username.
3. **Run the Script**:
   - Right-click the `.bat` file and select **Run as Administrator**, or
   - Double-click the script, which will prompt for administrator access if not already elevated.

## Code Explanation
- **Administrator Check**: Ensures the script is run with elevated permissions.
- **Temporary File Removal**: Deletes files in specific folders (`Temp`, `Prefetch`, etc.).
- **Recycle Bin Cleanup**: Completely removes files from the system recycle bin.
- **DNS Flush**: Clears the DNS resolver cache to improve network performance.
