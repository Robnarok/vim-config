# vim-config

## Prerequesits

- Install neovim
- [Install Vim Plug](https://github.com/junegunn/vim-plug) -> ```sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'```
- [Install Nodejs for Vim Coc](https://github.com/neoclide/coc.nvim) ```curl -sL install-node.vercel.app/lts | bash``` (as root user)

### Clone this Repository

just clone it into to .config/nvim

### Create extra File

I have created an extra file to enable custom settings for different devices, which arent Synched by git ... so you need to create an file called `extra.vim` to disable the warning at the start of nvim
