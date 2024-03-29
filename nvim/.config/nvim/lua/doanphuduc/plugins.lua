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

  -- Web developments

  -- Buffer killer
  use("qpkorr/vim-bufkill")

  -- Comment
  use("tpope/vim-commentary")

  -- Syntax highlight
  use('sheerun/vim-polyglot')
  -- use("nvim-treesitter/playground")
  -- use({
  --   "nvim-treesitter/nvim-treesitter", 
  --   config = function()
  --     require('doanphuduc.plugins.nvim-treesitter')
  --   end
  -- })

  -- use({
  --   'nvim-treesitter/nvim-treesitter-context',
  --   requires = {
  --     'nvim-treesitter/nvim-treesitter', -- optional, for file icons
  --   },
  --   config = function()
  --     require('doanphuduc.plugins.nvim-treesitter-context');
  --   end
  -- })

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

  -- Statusline & bufferline
  use({
    'nvim-lualine/lualine.nvim',
    requires = {
      'kyazdani42/nvim-web-devicons',
      opt = true
    },
    config = function()
      require('doanphuduc.plugins.lualine')
    end
  })

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
  use("L3MON4D3/LuaSnip")

  -- Improve preview when search with fzf
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

  -- Go plugins
  use('fatih/vim-go')

end
)



