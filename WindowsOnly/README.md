# For use on WSL

Download this directory somewhere on your Windows system;

> [!CAUTION]
> The path must not contain spaces.

- ❌ `C:\Program Files\Neovim\bin`
- ✅ `C:\Users\johnDoe\AppData\Local\nvim\WindowsOnly`

Then add it to your Windows PATH;

In your WSL distro create a symlink:  
`sudo ln -s "/mnt/c/Users/<johnDoe>/AppData/Local/nvim/WindowsOnly/win32yank.exe" /usr/local/bin/win32yank.exe`  
Don't forget to reload your terminals to access this newly added directory in the PATH.

No need for additional clipboard configurations as Nvim default clipboard configuration use auto-detection, see `:help clipboard`.
