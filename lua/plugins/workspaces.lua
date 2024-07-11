return {
	"natecraddock/workspaces.nvim",
	config = function()
		require("workspaces").setup({
			hooks = {
				open = { "Telescope find_files" },
			},
		})

		-- Set up key mappings for workspace management
		vim.api.nvim_set_keymap("n", "<leader>wa", ":WorkspacesAdd<CR>", { noremap = true, silent = true })
		vim.api.nvim_set_keymap("n", "<leader>wr", ":WorkspacesRemove<CR>", { noremap = true, silent = true })
		vim.api.nvim_set_keymap("n", "<leader>wl", ":WorkspacesList<CR>", { noremap = true, silent = true })
		vim.api.nvim_set_keymap("n", "<leader>wo", ":WorkspacesOpen<CR>", { noremap = true, silent = true })
	end,
}
