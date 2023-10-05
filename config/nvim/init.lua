local set = vim.opt

set.backspace=indent,eol,start
set.swapfile = false
set.ruler = true -- Show cursor position
set.title = true -- Show file title at the top of terminal window

-- Display relative line numbers, with absolute number for current line
set.number = true
set.numberwidth = 5
set.relativenumber = true

-- Search settings
set.incsearch = true -- When searching, shows patterns typed so far

-- Tab settings
set.shiftround = true
set.shiftwidth = 2
set.tabstop = 2

-- Always use spaces when inserting a <Tab>, so formatting
-- won't be messed up if tabstop is changed
set.expandtab = true

set.textwidth = 120           -- Break line automatically when reach 121 column
set.colorcolumn = "121"       -- Make 121 column visible

vim.g.mapleader = " " -- Use space key as leader.

-- Split edit init.lua vertically
vim.keymap.set('n', '<leader>vr', ':vsp $HOME/.config/nvim/init.lua<cr>')

-- Source init.lua
vim.keymap.set('n', '<leader>so', ':source $HOME/.config/nvim/init.lua<cr>')

-- Swap 0 and ˆ in order to make easier to move to the first non-whitespace character
vim.keymap.set('n', '0', '^')
vim.keymap.set('n', '^', '0')

-- Enable use jk (and kj) to escape from insert mode
vim.keymap.set('i', 'jk', '<esc>')
vim.keymap.set('i', 'kj', '<esc>')

vim.keymap.set('n', '<leader>-', ':wincmd _<cr>:wincmd |<cr>') -- Zoom in a vim pane
vim.keymap.set('n', '<leader>=', ':wincmd =<cr>')              -- Zoom out a vim pane

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  'altercation/vim-colors-solarized',
  'christoomey/vim-tmux-navigator',
  'altercation/vim-colors-solarized',
  'christoomey/vim-tmux-navigator',
  'jgdavey/tslime.vim',
  { "junegunn/fzf", dir = "~/.fzf", build = "./install --all" },
  'junegunn/fzf.vim',
  'ntpeters/vim-better-whitespace',
  'thoughtbot/vim-rspec',
  'tpope/vim-surround',
  'tpope/vim-rails',
  'tpope/vim-commentary',
  'tpope/vim-fugitive',
  'neovim/nvim-lspconfig'
})

set.background='dark'
vim.cmd [[silent! colorscheme solarized]]

vim.keymap.set('n', '<leader>t', ':call RunCurrentSpecFile()<cr>')
vim.keymap.set('n', '<leader>s', ':call RunNearestSpec()<cr>')
vim.keymap.set('n', '<leader>l', ':call RunLastSpec()<cr>')
vim.keymap.set('n', '<leader>a', ':call RunAllSpecs()<cr>')

-- tslime.vim open vim-rspec results in another tmux pane
vim.g.rspec_command = 'call Send_to_Tmux("bundle exec rspec {spec}\n")'

-- FZF settings
vim.keymap.set('n', '<C-p>', ':Files<cr>')
vim.g.fzf_files_options = '--reverse'
