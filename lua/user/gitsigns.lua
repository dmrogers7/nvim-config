local status_ok, gitsigns = pcall(require, "gitsigns")
if not status_ok then
	return
end

-- 'signs.add.hl' is now deprecated, please define highlight 'GitSignsAdd'
-- 'signs.add.linehl' is now deprecated, please define highlight 'GitSignsAddLn'
-- 'signs.add.numhl' is now deprecated, please define highlight 'GitSignsAddNr'
-- 'signs.change.hl' is now deprecated, please define highlight 'GitSignsChange'
-- 'signs.change.linehl' is now deprecated, please define highlight 'GitSignsChangeLn'
-- 'signs.change.numhl' is now deprecated, please define highlight 'GitSignsChangeNr'
-- 'signs.changedelete.hl' is now deprecated, please define highlight 'GitSignsChangedelete'
-- 'signs.changedelete.linehl' is now deprecated, please define highlight 'GitSignsChangedeleteLn'
-- 'signs.changedelete.numhl' is now deprecated, please define highlight 'GitSignsChangedeleteNr'
-- 'signs.delete.hl' is now deprecated, please define highlight 'GitSignsDelete'
-- 'signs.delete.linehl' is now deprecated, please define highlight 'GitSignsDeleteLn'
-- 'signs.delete.numhl' is now deprecated, please define highlight 'GitSignsDeleteNr'
-- 'signs.topdelete.hl' is now deprecated, please define highlight 'GitSignsTopdelete'
-- 'signs.topdelete.linehl' is now deprecated, please define highlight 'GitSignsTopdeleteLn'
-- 'signs.topdelete.numhl' is now deprecated, please define highlight 'GitSignsTopdeleteNr'
-- gitsigns: Ignoring invalid configuration field 'yadm'
gitsigns.setup({
	-- signs = {
	-- add = { hl = "GitSignsAdd", text = "▎", numhl = "GitSignsAddNr", linehl = "GitSignsAddLn" },
	-- change = { hl = "GitSignsChange", text = "▎", numhl = "GitSignsChangeNr", linehl = "GitSignsChangeLn" },
	-- delete = { hl = "GitSignsDelete", text = "契", numhl = "GitSignsDeleteNr", linehl = "GitSignsDeleteLn" },
	-- topdelete = { hl = "GitSignsDelete", text = "契", numhl = "GitSignsDeleteNr", linehl = "GitSignsDeleteLn" },
	-- changedelete = { hl = "GitSignsChange", text = "▎", numhl = "GitSignsChangeNr", linehl = "GitSignsChangeLn" },
	-- },
	signcolumn = true, -- Toggle with `:Gitsigns toggle_signs`
	numhl = false, -- Toggle with `:Gitsigns toggle_numhl`
	linehl = false, -- Toggle with `:Gitsigns toggle_linehl`
	word_diff = false, -- Toggle with `:Gitsigns toggle_word_diff`
	watch_gitdir = {
		interval = 1000,
		follow_files = true,
	},
	attach_to_untracked = true,
	current_line_blame = false, -- Toggle with `:Gitsigns toggle_current_line_blame`
	current_line_blame_opts = {
		virt_text = true,
		virt_text_pos = "eol", -- 'eol' | 'overlay' | 'right_align'
		delay = 1000,
		ignore_whitespace = false,
	},
	--current_line_blame_formatter_opts = {
	--relative_time = false,
	--},
	sign_priority = 6,
	update_debounce = 100,
	status_formatter = nil, -- Use default
	max_file_length = 40000,
	preview_config = {
		-- Options passed to nvim_open_win
		border = "single",
		style = "minimal",
		relative = "cursor",
		row = 0,
		col = 1,
	},
	-- yadm = {
	-- enable = false,
	-- },
})
