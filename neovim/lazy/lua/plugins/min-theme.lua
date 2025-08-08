return {
	"datsfilipe/min-theme.nvim",
	config = function()
		require("min-theme").setup({
			italics = {
				comments = false,
				keywords = false,
				functions = false,
				strings = false,
				variables = false
			}
		})
	end
}
