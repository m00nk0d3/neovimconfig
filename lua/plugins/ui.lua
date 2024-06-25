return {
  {

    "folke/noice.nvim",
    opts = function(_, opts)
      table.insert(opts.routes, {
        filter = {
          event = "notify",
          find = "No information available",
        },
        opts = { skip = true },
      })
      opts.presets.lsp_doc_border = true
    end,
  },
  -- notifications time out after 10 seconds
  {
    "rcarriga/nvim-notify",
    opts = {
      timeout = 10000,
    },
  },

  -- statusline

  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = {
      options = {
        theme = "solarized_dark",
      },
    },
  },

  -- logo
  {
    "nvimdev/dashboard-nvim",
    envent = "VimEnter",
    opts = function(_, opts)
      local logo = [[ 
 __   __  _______  _______  __    _  ___   _  _______  ______   _______ 
|  |_|  ||  _    ||  _    ||  |  | ||   | | ||  _    ||      | |       |
|       || | |   || | |   ||   |_| ||   |_| || | |   ||  _    ||___    |
|       || | |   || | |   ||       ||      _|| | |   || | |   | ___|   |
|       || |_|   || |_|   ||  _    ||     |_ | |_|   || |_|   ||___    |
| ||_|| ||       ||       || | |   ||    _  ||       ||       | ___|   |
|_|   |_||_______||_______||_|  |__||___| |_||_______||______| |_______|
]]
      logo = string.rep("\n", 8) .. logo .. "\n\n"
      opts.config.header = vim.split(logo, "\n")
    end,
  },
}
