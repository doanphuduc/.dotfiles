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

  -- use("nvim-lua/plenary.nvim")

  -- -- Telescope for fuzzy finder
  -- use({
  --   "nvim-telescope/telescope.nvim",
  --   requires = {
  --     "nvim-lua/plenary.nvim"
  --   },
  --   config = function()
  --     require('doanphuduc.plugins.telescope')
  --   end
  -- })

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

  use("ojroques/nvim-lspfuzzy")
  require('lspfuzzy').setup {
    methods = 'all',         -- either 'all' or a list of LSP methods (see below)
    jump_one = true,         -- jump immediately if there is only one location
    save_last = false,       -- save last location results for the :LspFuzzyLast command
    callback = nil,          -- callback called after jumping to a location
    fzf_preview = {          -- arguments to the FZF '--preview-window' option
      'right:+{2}-/2'          -- preview on the right and centered on entry
    },
    fzf_action = {               -- FZF actions
      ['ctrl-v'] = 'vsplit',     -- go to location in a vertical split
      ['ctrl-h'] = 'split',      -- go to location in a horizontal split
    },
    fzf_modifier = ':~:.',   -- format FZF entries, see |filename-modifiers|
    fzf_trim = true,         -- trim FZF entries
  }

end
)



