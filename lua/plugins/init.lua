return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
  -- :Copilot setup
  {
    "github/copilot.vim",
  },
  {
    "tpope/vim-fugitive",
  },
  {
      "kylechui/nvim-surround",
      version = "*", -- Use for stability; omit to use `main` branch for the latest features
      event = "VeryLazy",
      config = function()
          require("nvim-surround").setup({
              -- Configuration here, or leave empty to use defaults
          })
      end
  },
  {
    "lewis6991/gitsigns.nvim",
    config = function ()
      require ("gitsigns").setup()
    vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", {})
    vim.keymap.set("n", "<leader>gr", ":Gitsigns reset_hunk<CR>", {})
    vim.keymap.set("n", "<leader>gb", ":Gitsigns reset_buffer<CR>", {})
    -- navigation
    vim.keymap.set("n", "[g", ":Gitsigns prev_hunk<CR>", {})
    vim.keymap.set("n", "]g", ":Gitsigns next_hunk<CR>", {})
    end,
  },
  {
    "NeogitOrg/neogit",
    config = function ()
      require ("neogit").setup()
    end,
  },

  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
  			"vim", "lua", "vimdoc",
       "html", "css"
  		},
  	},
  },
}
