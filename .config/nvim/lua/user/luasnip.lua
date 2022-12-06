local status_ok, luasnip = pcall(require, "luasnip")
if not status_ok then
	-- not loaded
	return
end

require("luasnip.loaders.from_vscode").lazy_load()
require("luasnip").filetype_extend("ruby", { "rails" })
require("luasnip").filetype_extend("lua", { "lua" })
require("luasnip").filetype_extend("cpp", { "cpp" })
require("luasnip").filetype_extend("python", { "python" })
require("luasnip").filetype_extend("latex", { "latex" })
require("luasnip").filetype_extend("markdown", { "cpp" })
require("luasnip").filetype_extend("org", { "org" })
require("luasnip").filetype_extend("r", { "r" })
require("luasnip").filetype_extend("shell", { "shell" })
require("luasnip").filetype_extend("javascript", { "javascriptreact" })

