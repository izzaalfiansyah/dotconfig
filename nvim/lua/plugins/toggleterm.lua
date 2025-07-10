return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    local toggleterm = require("toggleterm")
    local Terminal = require("toggleterm.terminal").Terminal

    toggleterm.setup({
      direction = "horizontal",
      start_in_insert = true,
    })

    -- Define multiple horizontal terminals with different IDs
    local hterm1 = Terminal:new({ direction = "horizontal", hidden = true, count = 1 })
    local hterm2 = Terminal:new({ direction = "horizontal", hidden = true, count = 2 })
    local hterm3 = Terminal:new({ direction = "horizontal", hidden = true, count = 3 })
    local hterm4 = Terminal:new({ direction = "horizontal", hidden = true, count = 4 })
    local hterm5 = Terminal:new({ direction = "horizontal", hidden = true, count = 5 })

    -- Keybindings to toggle them independently
    vim.keymap.set("n", "<leader>tt1", function()
      hterm1:toggle()
    end, { desc = "Horizontal Terminal 1" })
    vim.keymap.set("n", "<leader>tt2", function()
      hterm2:toggle()
    end, { desc = "Horizontal Terminal 2" })
    vim.keymap.set("n", "<leader>tt3", function()
      hterm3:toggle()
    end, { desc = "Horizontal Terminal 3" })
    vim.keymap.set("n", "<leader>tt4", function()
      hterm4:toggle()
    end, { desc = "Horizontal Terminal 4" })
    vim.keymap.set("n", "<leader>tt5", function()
      hterm5:toggle()
    end, { desc = "Horizontal Terminal 5" })
  end,
}
