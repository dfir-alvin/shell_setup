# shell_setup

## bash
````
wget https://github.com/dfir-alvin/shell_setup/raw/refs/heads/main/bash_setup.txt
mv ~/.bashrc bashrc_backup
mv bash_setup.txt ~/.bashrc
````

## zsh
````
sudo apt install zsh zsh-syntax-highlighting zsh-autosuggestions
wget https://github.com/dfir-alvin/shell_setup/raw/refs/heads/main/zsh_setup.txt
mv ~/.zshrc zshrc_backup
mv zsh_setup.txt ~/.zshrc
````

## PowerShell (non-ISE)
````
New-Item -Path $PROFILE -Type File -Force
Invoke-WebRequest "https://raw.githubusercontent.com/dfir-alvin/shell_setup/refs/heads/main/Microsoft.PowerShell_profile.ps1" -OutFile "C:\Users\$Env:UserName\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1"
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
````

## PowerShell ISE
````
New-Item -Path $PROFILE -Type File -Force
Invoke-WebRequest "https://raw.githubusercontent.com/dfir-alvin/shell_setup/refs/heads/main/Microsoft.PowerShellISE_profile.ps1" -OutFile "C:\Users\$Env:UserName\Documents\WindowsPowerShell\Microsoft.PowerShellISE_profile.ps1"
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
````
