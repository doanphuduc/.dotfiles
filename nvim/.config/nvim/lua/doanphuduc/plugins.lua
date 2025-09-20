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

  -- -- Colorschemes
  -- use({
  --   "dracula/vim",
  --   priority = 1000,
  -- })
  
  use({
    "catppuccin/nvim",
    as = "catppuccin",
    config = function()
      require('doanphuduc.plugins.catppuccin')
    end
  })

  -- Fast delete, update in surround tag, bracket, parenthenses, ...
  use("tpope/vim-surround")
  use("tpope/vim-fugitive")

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

  use({
    'jedrzejboczar/devcontainers.nvim',
    dependencies = {
        'netman.nvim', -- optional to browse files in docker container
    },
    opts = {},
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
  -- use({
  --   'sheerun/vim-polyglot',
  --   priority = 1000,
  --   -- opt = false,
  -- })
  use("nvim-treesitter/playground")
  use({
    "nvim-treesitter/nvim-treesitter", 
    config = function()
      require('doanphuduc.plugins.nvim-treesitter')
    end
  })

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

    use({
    "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
    config = function()
        require("lsp_lines").setup()
    end,
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

  -- Web dev plugins
  -- use('windwp/nvim-autopairs')
  -- use('windwp/nvim-ts-autotag')
  use({
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function()
        require("nvim-autopairs").setup {}
    end
  })

  use({
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    requires = { {'nvim-lua/plenary.nvim'} },
    config = function()
      require('doanphuduc.plugins.nvim-telescope')
    end
  })




end
)



