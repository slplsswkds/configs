-- Basic settings
vim.opt.compatible = false        -- Disable compatibility with old versions of Vi
vim.opt.encoding = 'utf-8'        -- Set encoding to utf-8
vim.opt.number = true             -- Show line numbers
vim.opt.tabstop = 4               -- Number of spaces a tab character represents
vim.opt.shiftwidth = 4            -- Number of spaces to use for each indentation level
vim.opt.expandtab = true          -- Use spaces instead of tabs for indentation

local packer_installed, packer = pcall(require, 'packer')
if not packer_installed then
  print('Packer not installed! Installing...')
  vim.cmd('!git clone --depth 1 https://github.com/wbthomason/packer.nvim ' .. vim.fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim')
  return
end

-- Initialize packer
packer.startup(function(use)
  use 'nvim-tree/nvim-tree.lua' -- file explorer
  
  use 'nvim-tree/nvim-web-devicons' -- for icon support
  
  -- use 'nanozuki/tabby.nvim' -- A declarative, highly configurable, and neovim style tabline plugin
  use 'romgrk/barbar.nvim'

  use 'lewis6991/gitsigns.nvim' -- for git status

  use 'chrisbra/changesPlugin'

  use 'RRethy/vim-illuminate'
end)

-- ################################################## NvimTree.lua 
-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

-- OR setup with some options
require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 40,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

-- vim.cmd("NvimTreeOpen")
-- ####################################################################################################

-- ################################################## illuminate
-- require('illuminate').configure({
--     -- providers: provider used to get references in the buffer, ordered by priority
--     providers = {
--         'lsp',
--         'treesitter',
--         'regex',
--     },
--     -- delay: delay in milliseconds
--     delay = 100,
--     -- filetype_overrides: filetype specific overrides.
--     -- The keys are strings to represent the filetype while the values are tables that
--     -- supports the same keys passed to .configure except for filetypes_denylist and filetypes_allowlist
--     filetype_overrides = {},
--     -- filetypes_denylist: filetypes to not illuminate, this overrides filetypes_allowlist
--     filetypes_denylist = {
--         'dirbuf',
--         'dirvish',
--         'fugitive',
--     },
--     -- filetypes_allowlist: filetypes to illuminate, this is overridden by filetypes_denylist
--     -- You must set filetypes_denylist = {} to override the defaults to allow filetypes_allowlist to take effect
--     filetypes_allowlist = {},
--     -- modes_denylist: modes to not illuminate, this overrides modes_allowlist
--     -- See `:help mode()` for possible values
--     modes_denylist = {},
--     -- modes_allowlist: modes to illuminate, this is overridden by modes_denylist
--     -- See `:help mode()` for possible values
--     modes_allowlist = {},
--     -- providers_regex_syntax_denylist: syntax to not illuminate, this overrides providers_regex_syntax_allowlist
--     -- Only applies to the 'regex' provider
--     -- Use :echom synIDattr(synIDtrans(synID(line('.'), col('.'), 1)), 'name')
--     providers_regex_syntax_denylist = {},
--     -- providers_regex_syntax_allowlist: syntax to illuminate, this is overridden by providers_regex_syntax_denylist
--     -- Only applies to the 'regex' provider
--     -- Use :echom synIDattr(synIDtrans(synID(line('.'), col('.'), 1)), 'name')
--     providers_regex_syntax_allowlist = {},
--     -- under_cursor: whether or not to illuminate under the cursor
--     under_cursor = true,
--     -- large_file_cutoff: number of lines at which to use large_file_config
--     -- The `under_cursor` option is disabled when this cutoff is hit
--     large_file_cutoff = nil,
--     -- large_file_config: config to use for large files (based on large_file_cutoff).
--     -- Supports the same keys passed to .configure
--     -- If nil, vim-illuminate will be disabled for large files.
--     large_file_overrides = nil,
--     -- min_count_to_highlight: minimum number of matches required to perform highlighting
--     min_count_to_highlight = 1,
--     -- should_enable: a callback that overrides all other settings to
--     -- enable/disable illumination. This will be called a lot so don't do
--     -- anything expensive in it.
--     should_enable = function(bufnr) return true end,
--     -- case_insensitive_regex: sets regex case sensitivity
--     case_insensitive_regex = false,
-- })
-- ####################################################################################################

-- ################################################## 

-- ####################################################################################################

-- ################################################## 

-- ####################################################################################################

