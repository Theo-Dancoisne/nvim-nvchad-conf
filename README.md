I use neovim on so much devices that I actually need a repo.  
I'm new on this, don't expect a lot of cool stuff.  

`git clone https://github.com/Theo-Dancoisne/nvim-nvchad-conf.git `**`nvim`**

## Plugins and Services:
- mini.move (default conf, lazy=false)
- mason-org/mason-lspconfig.nvim (default conf, lazy=false -> automatically enable installed servers)
    With lsp servers for:
    - Lua
    - TypeScript
    - Python
- DAP services (debugging tools) are not properly setup because they are ultimately not used today


## Custom scripts
- vimscript to find&replace with an auto-incremented number (very basic, from 0 to n), command example: `:%s#number_after_this->#\="number_after_this->".Incr()."some_other_stuff"`


I'm using this on both Linux, Windows and WSL2, so it requires special care to work properly.
## WSL stuffs
- A working clipboard, requires some manual handling see the WindowsOnly/README.md

## Windows stuffs
- Set **PowerShell 7** as the Nvim's shell in a friendly/optimized way

