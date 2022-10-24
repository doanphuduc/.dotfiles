local cmp = require("cmp")

cmp.setup({
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<CR>'] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    },
  }),
  sources = {
    { name = 'nvim_lsp', max_item_count = 10 },
    { name = 'luasnip', max_item_count = 10 },
  },
	formatting = {
		format = require('lspkind').cmp_format({
        with_text = true,
        maxwidth = 50,
        before = function(entry, vim_item)
          return vim_item
        end
    })
	},
})
