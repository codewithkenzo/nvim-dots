vim.g.base46_cache = vim.fn.stdpath "data" .. "/nvchad/base46/"

vim.g.mapleader = " "

-- bootstrap lazy and all plugins
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

if not vim.uv.fs_stat(lazypath) then
  local repo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system { "git", "clone", "--filter=blob:none", repo, "--branch=stable", lazypath }
end

vim.opt.rtp:prepend(lazypath)
vim.o.sessionoptions = vim.o.sessionoptions .. ",localoptions"
vim.g.nvim_tree_respect_buf_cwd = 1
local lazy_config = require "configs.lazy"


vim.cmd [[
  autocmd TermOpen * startinsert
  autocmd BufEnter * if &buftype == 'terminal' | startinsert | endif
]]


-- load project.nvim with telescope integration



-- load plugins
require("lazy").setup({
  {
    "NvChad/NvChad",
    lazy = false,
    branch = "v2.5",
    import = "nvchad.plugins",
  },

  { import = "plugins" },
}, lazy_config)

-- load theme
dofile(vim.g.base46_cache .. "defaults")
dofile(vim.g.base46_cache .. "statusline")

require "options"
require "nvchad.autocmds"

vim.schedule(function()
  require "mappings"
end)

vim.opt.swapfile = false
vim.o.sessionoptions="blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"

require("persisted").setup({
  ignored_dirs = {
    "~/.local/",
    "~/go/",
    "~/gamemode/",
    "~/img2braille/"
  },
})

-- load mini library pieces
require('mini.surround').setup()
require('mini.notify').setup()
require('mini.animate').setup(

  {
    scroll = {
    -- Whether to enable this animation
    enable = false,

  },
  }
)
require('mini.indentscope').setup()
-- load terminal plugin oversser
require("cinnamon").setup {
    -- Enable all provided keymaps
    keymaps = {
        basic = true,
        extra = true,
    },
    -- Only scroll the window
    options = { mode = "window" },
}
--require("ibl").setup()
require('reactive').setup {
  builtin = {
    cursorline = true,
    cursor = true,
    modemsg = true
  }
}
-- load liveserver
vim.api.nvim_set_keymap('n', '<leader>lv', ':vsplit | terminal /home/kenzo/.local/share/npm/bin/live-server .<CR>', { noremap = true, silent = true })


vim.opt.termguicolors = true

require('nvim-highlight-colors').setup({})
require("cmp").setup({
        formatting = {
                format = require("nvim-highlight-colors").format
        }
})

require('nvim-cursorline').setup {
  cursorline = {
    enable = true,
    timeout = 1000,
    number = false,
  },
  cursorword = {
    enable = true,
    min_length = 3,
    hl = { underline = true },
  }
}

require('fine-cmdline').setup({
  cmdline = {
    enable_keymaps = true,
    smart_history = true,
    prompt = ': '
  },
  popup = {
    position = {
      row = '72%',
      col = '50%',
    },
    size = {
      width = '30%',
    },
    border = {
    },
    win_options = {
      winhighlight = 'Normal:Normal,FloatBorder:FloatBorder',
    },
  },
  hooks = {
    before_mount = function(input)
      -- code
    end,
    after_mount = function(input)
      -- code
    end,
    set_keymaps = function(imap, feedkeys)
      -- code
    end
  }
})
