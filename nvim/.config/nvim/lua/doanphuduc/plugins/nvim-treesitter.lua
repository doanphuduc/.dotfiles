require('nvim-treesitter.configs').setup({
  ensure_installed = {
    "tsx",
    "toml",
    "fish",
    "php",
    "json",
    "yaml",
    "swift",
    "css",
    "html",
    "lua",
    "cpp",
    "python",
    "bash",
    "go",
  },
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = true,
    disable = {},
  },
  auto_install = true,
})
