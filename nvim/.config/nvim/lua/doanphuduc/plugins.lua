-- Automatically run :PackerCompile whenever plugins.lua is updated with an autocommand:
vim.cmd([[
  augroup PACKER
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup END
]])


return require('packer').startup(function()
  -- Package manager
  use("wbthomason/packer.nvim")

  -- Colorschemes
  use("dracula/vim")

  -- Fast delete, update in surround tag, bracket, parenthenses, ...
  use("tpope/vim-surround")

  -- NERDTree plugins

  use("nvim-tree/nvim-web-devicons")
  use({
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
    config = function()
      require('doanphuduc.plugins.nvim-tree')
    end
  })

  -- Show git diff in sign column
  use({
    "airblade/vim-gitgutter",
    config = function()
      require('doanphuduc.plugins.vim-gitgutter')
    end
  })

  -- Buffer killer
  use("qpkorr/vim-bufkill")

  -- Comment
  use("tpope/vim-commentary")

  -- Syntax highlight
  use("sheerun/vim-polyglot")

  -- Fuzzy finder
  use({
    "junegunn/fzf",
    run = ":call fzf#install()"
  })
  use({
    "junegunn/fzf.vim",
    requires = {
      "junegunn/fzf",
    },
    config = function()
      require('doanphuduc.plugins.fzf')
    end
  })

  -- Statusline
  use({
    "vim-airline/vim-airline",
    config = function()
      require("doanphuduc.plugins.vim-airline")
    end
  })
  use("vim-airline/vim-airline-themes")

  -- Tmux status line
  use("edkolev/tmuxline.vim")

  -- Multiselection --> anti-patern in vim, can be removed in the future
  use("terryma/vim-multiple-cursors")

  -- LSP & Completion
  use({
    "neovim/nvim-lspconfig",
    config = function()
      require('doanphuduc.plugins.nvim-lspconfig')
    end
  })
  use("hrsh7th/nvim-cmp")
  use({
    "hrsh7th/cmp-nvim-lsp",
    config = function()
      require('doanphuduc.plugins.nvim-cmp')
    end
  })
  -- use("onsails/lspkind-nvim")
  use("L3MON4D3/LuaSnip")

  use({
    "ojroques/nvim-lspfuzzy",
    requires = {
      {'junegunn/fzf'},
      {'junegunn/fzf.vim'},  -- to enable preview (optional)
    },
    config = function()
      require('doanphuduc.plugins.nvim-lspfuzzy')
    end
  })

end
)



