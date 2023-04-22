vim.cmd "colorscheme material"
vim.cmd [[augroup COQ 
        autocmd!
        autocmd VimEnter * COQnow -s
augroup END]]

local coq = require "coq"
require "lualine".setup()
require "nvim-tree".setup()
require "nvim-web-devicons".setup()
require "mason".setup()
require "presence".setup({})

require "lspconfig".pyright.setup(
	coq.lsp_ensure_capabilities {}
)

require "dashboard".setup {
	config = {
		header = {
			"███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗",
			"████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║",
			"██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║",
			"██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║",
			"██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║",
			"╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝",
			""
		},
		packages = {
			enable = false
		},
		shortcut = {
			{ desc = ' Update', group = '@property', action = 'Lazy update', key = 'u' },
			{
				icon = ' ',
				icon_hl = '@variable',
				desc = 'Files',
				group = 'Label',
				action = 'Telescope find_files',
				key = 'f',
			},
		}
	}
}

require "lspconfig".lua_ls.setup {
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" },
			},
		}
	}
}

require "nvim-treesitter.configs".setup {
	  ensure_installed = { "lua", "vim", "javascript", "python", "java", "bash", "json" },
	  sync_install = false,
	  auto_install = true,
	  highlight = {
		  enable = true
	  }
  }

require "mason-lspconfig".setup({
	  ensure_installed = { "lua_ls", "pyright" }
})
