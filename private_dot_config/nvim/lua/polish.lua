-- This will run last in the setup process and is a good place to configure
-- things like custom filetypes. This is just pure lua so anything that doesn't
-- fit in the normal config locations above can go here.

-- Set up custom filetypes
-- vim.filetype.add({
-- 	extension = {
-- 		foo = "fooscript",
-- 	},
-- 	filename = {
-- 		["Foofile"] = "fooscript",
-- 	},
-- 	pattern = {
-- 		["~/%.config/foo/.*"] = "fooscript",
-- 	},
-- })

-- Reset cursor when exiting
vim.api.nvim_create_augroup("cursorshape", { clear = true })
vim.api.nvim_create_autocmd("VimLeave", {
	desc = "Restore cursor shape on VimLeave",
	command = "set guicursor=a:ver25-blinkon1",
	pattern = "*",
	group = "cursorshape",
})
