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

local plugins = {
	"marko-cerovac/material.nvim",
	"nvim-lualine/lualine.nvim",
	"nvim-tree/nvim-tree.lua",
	"nvim-tree/nvim-web-devicons",
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	"neovim/nvim-lspconfig",
	"nvim-treesitter/nvim-treesitter",
	"andweeb/presence.nvim",
	"jose-elias-alvarez/null-ls.nvim",

	{
		"CRAG666/code_runner.nvim",
		config = true
	},

	{
		"akinsho/bufferline.nvim",
		version = "*"
	},

	{
		"ms-jpq/coq_nvim", branch = "coq"
	},

	{
		"ms-jpq/coq.artifacts", branch = "artifacts"
	},

	{
		"glepnir/dashboard-nvim",
		event = "VimEnter"
	},

       {
	  "nvim-telescope/telescope.nvim", tag = "0.1.1",
	  dependencies = { "nvim-lua/plenary.nvim" }
       }
}

local opts = {}

require "lazy".setup(plugins, opts)
