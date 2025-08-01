return {
	"echasnovski/mini.pairs",
	event = "VeryLazy",
	opts = {
		modes = { insert = true, command = false, terminal = false },
		-- skip autopair when next character is one of these
		skip_next = [=[[%w%%%'%[%"%.%`%$]]=],
		-- skip autopair when the cursor is inside these treesitter nodes
		skip_ts = { "string" },
		-- skip autopair when next character is closing pair
		-- and there are more closing pairs than opening pairs
		skip_unbalanced = true,
		-- better deal with markdown code blocks
		markdown = true,
		mappings = {
			[")"] = false,
			["]"] = false,
			["}"] = false,
			-- You can continue adding similar mappings for other pairs if needed
		},
	},
}
-- ))))))))))))))))))))))))))))))))))))))))))
