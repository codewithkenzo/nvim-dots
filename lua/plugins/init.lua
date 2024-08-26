return {
{
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- Example plugin configuration
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    'goolord/alpha-nvim',
    lazy = false, -- Ensure it loads immediately
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require("configs.alpha")  -- Update this line to match your path
    end
  },
  {"nvim-tree/nvim-tree.lua", enabled = false},
  {
    'nvim-telescope/telescope.nvim',
    lazy = false, -- Ensure it loads immediatel
    config = function()
      require("configs.telescope")  -- Update this line to match your path
    end
  },
  {
    "nvim-telescope/telescope-file-browser.nvim",
    lazy = false,
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
},
  {"VonHeikemen/searchbox.nvim", lazy = false},
  {'brenoprata10/nvim-highlight-colors'},
  { 'rasulomaroff/reactive.nvim' },
  {"MunifTanjim/nui.nvim", lazy = false},
  {"numToStr/FTerm.nvim"},
  {"lambdalisue/vim-suda"},
  {
  "declancm/cinnamon.nvim",
    lazy = false,
  version = "*", -- use latest release
  opts = {
    -- change default options here
  },
},
  {"VonHeikemen/fine-cmdline.nvim", lazy = false},
  {"yamatsum/nvim-cursorline"},
  {"tpope/vim-fugitive", lazy = false},
{
  "ibhagwan/fzf-lua",
    lazy = false,
  -- optional for icon support
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    -- calling `setup` is optional for customization
    require("fzf-lua").setup({"telescope",winopts={preview={default="bat"}}}, { fzf_colors = true })
  end
  },
{
  "olimorris/persisted.nvim",
  lazy = false, -- make sure the plugin is always loaded at startup
  config = true
},
  {
  "shellRaining/hlchunk.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    require("hlchunk").setup({})

    end
},
  {
  "gbprod/yanky.nvim",
    lazy = false,
    opts = {
      highlight = {
      on_yank = true,
      on_put = true,
      timer = 120,
  },
  },
},  {"nvim-lua/plenary.nvim"},
  -- Neo-tree plugin configuration

  -- Uncomment to use nvim-treesitter
  -- {
  --   "nvim-treesitter/nvim-treesitter",
  --   opts = {
  --     ensure_installed = {
  --       "vim", "lua", "vimdoc",
  --       "html", "css"
  --     },
  --   },
  -- },
}

