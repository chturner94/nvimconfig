
## Packer
One of the most common issues you may run into when trying to enable plugins is the fact that often times they are referring to a different package manager in the documentation then what you are using. Here are some conversions for adapting more popular plugins managers to work with packer.

1. Plug
Plug will documentation will suggest that you use the following method call to enable a plugin in your `init.vim` file:
`Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}`
To adapt this to work with packer you only have to make a few changes to this code.
`use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })`
Just like that, it should now work.

## Tutorials
1. [Supercharge NVIM with Lua](https://mattermost.com/blog/turning-neovim-into-a-full-fledged-code-editor-with-lua/)

## Setup for script building to automate this set up
Some dependencies were determined to be had which included python3, python3vim and nodejs. NodeJS needs to be installed using curl from the official source rather than using apt.
To automate with a script we will need to ensure we have all of the dependencies, and make a gitpull from a repo with our configuration ready to go. then We can hopefully do the PackerSync stuff in order to have this working out of the box. Still a few dracula configs I'd like to figure out. 
