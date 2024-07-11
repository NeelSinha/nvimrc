-- Utilities for creating configurations
local util = require("formatter.util")

-- Provides the Format, FormatWrite, FormatLock, and FormatWriteLock commands
require("formatter").setup({
	-- Enable or disable logging
	logging = true,
	-- Set the log level
	log_level = vim.log.levels.WARN,
	-- All formatter configurations are opt-in
	filetype = {

		-- Formatter configurations for filetype "lua" go here
		-- and will be executed in order
		lua = {
			-- "formatter.filetypes.lua" defines default configurations for the
			-- "lua" filetype
			require("formatter.filetypes.lua").stylua,

			-- You can also define your own configuration
			function()
				-- Supports conditional formatting
				if util.get_current_buffer_file_name() == "special.lua" then
					return nil
				end
			end,
		},

		-- formatter configurations for typescript
		typescript = {

			require("formatter.filetypes.typescript").prettier,
		},

		javascript = {
			require("formatter.filetypes.javascript").prettier,
		},

		json = {
			require("formatter.filetypes.json").prettier,
		},

		typescriptreact = {
			require("formatter.filetypes.typescriptreact").prettier,
		},

		javascriptreact = {
			require("formatter.filetypes.javascriptreact").prettier,
		},

		go = {
			require("formatter.filetypes.go").gofmt,
		},
		html = {
			require("formatter.filetypes.html").prettier,
		},
	},
})
