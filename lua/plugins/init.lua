return {
  {
    "stevearc/conform.nvim",
    event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require ("configs.lspconfig")
      require ("configs.go").setup()
    end,
  },

  {
    'akinsho/toggleterm.nvim',
    version = "*",
    config = function()
      require("toggleterm").setup{
        size = 20,
        open_mapping = [[<c-\>]],   -- Ctrl+\ to toggle terminal
        shading_factor = 2,
        direction = 'float',        -- floating terminal (can be 'vertical' or 'horizontal')
        float_opts = {
          border = 'curved',
        }
      }
    end,
  },

  {
    "glepnir/lspsaga.nvim",
    branch = "main",
    event = "LspAttach",  -- load on LSP attach for better startup time
    config = function()
      require("lspsaga").setup({
        -- You can customize lspsaga options here
      })

      -- Keymap for peek definition
      vim.keymap.set("n", "gp", "<cmd>Lspsaga peek_definition<CR>", { silent = true, noremap = true })
    end,
    dependencies = {
      {"nvim-tree/nvim-web-devicons"},  -- optional for icons
      {"nvim-treesitter/nvim-treesitter"}, -- optional for enhanced UI
    },
  },




  unpack(require("configs.rust")),

  { import = "plugins.snacks" },


  -- test new blink
  -- { import = "nvchad.blink.lazyspec" },

  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
}
