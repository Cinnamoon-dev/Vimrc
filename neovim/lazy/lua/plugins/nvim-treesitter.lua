return {
    "nvim-treesitter/nvim-treesitter",
    config = function()
	require("nvim-treesitter.configs").setup({
	    ensure_installed = {"c", "java", "lua", "vim", "vimdoc", "python", "javascript", "typescript", "bash", "dockerfile", "yaml"},
	    auto_install = true,
	    highlight = {
		enable = true
	    }
	})
    end
}
