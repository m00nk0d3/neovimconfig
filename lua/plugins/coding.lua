return {
  {
    "Exafunction/codeium.vim",
    event = "BufEnter",
    config = function()
      local keymap = vim.keymap
      local opts = { expr = true, silent = true }
      keymap.set("i", "<C-m>", function()
        return vim.fn["codeium#Accept"]()
      end, opts)
    end,
  },
  {
    "smjonas/inc-rename.nvim",
    cmd = "IncRename",
    config = true,
  },
}
