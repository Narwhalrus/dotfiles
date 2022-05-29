-- Bootstrap packer for new installation
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

-- Automatically run PackerCompile when this file changes
vim.cmd([[
  augroup packer_user_config
      autocmd!
      autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

return require('packer').startup(function()
    --
    -- General Purpose
    --
    use 'wbthomason/packer.nvim'
    use 'junegunn/fzf'
    use 'scrooloose/nerdtree'

    --
    -- Clojure Development
    --
    -- This didn't seem to work properly with Lein
    -- use 'Olical/conjure'
    use 'liquidz/vim-iced'
    -- https://github.com/tpope/vim-surround
    use 'tpope/vim-surround'
    -- https://github.com/guns/vim-sexp
    use 'guns/vim-sexp'
    -- https://github.com/tpope/vim-sexp-mappings-for-regular-people
    use 'tpope/vim-sexp-mappings-for-regular-people'
    -- https://github.com/luochen1990/rainbow
    use 'luochen1990/rainbow'
    -- Launch repl from vim
    use 'tpope/vim-dispatch'
    use 'clojure-vim/vim-jack-in'
    use 'radenling/vim-dispatch-neovim'

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if packer_bootstrap then
        require("packer").sync()
    end
end)
