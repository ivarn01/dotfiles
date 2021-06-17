--for filename in dir("~/dotfiles/nvim/lua/config") do require("config." + filename) end

require("config.compe-completion")
require("config.dashboard")
require("config.file-icons")
require("config.gitsigns-nvim")
require("config.highlights")
require("config.mappings")
require("config.nvim-lspconfig")
require("config.nvimTree")
require("config.statusline")
require("config.telescope-nvim")
require("config.top-bufferline")
require("config.treesitter-nvim")
require("config.whichkey")
require("config.zenmode")
