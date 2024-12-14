return {
  "rcarriga/nvim-dap-ui",
  dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" },
  config = function()
    local dap, dapui = require("dap"), require("dapui")
    dapui.setup({
      windows = {
        indent = 2,
        number = true,
      },
      layouts = {
        {
          elements = {
            { id = "scopes", size = 0.25 },
            "breakpoints",
            "stacks",
            "watches",
          },
          size = 40,
          position = "left",
        },
        {
          elements = {
            "repl",
            "console",
          },
          size = 0.25,
          position = "bottom",
        },
      },
      floating = {
        max_height = nil,
        max_width = nil,
        border = "single",
        mappings = {
          close = { "q", "<Esc>" },
        },
      },
      render = {
        max_type_length = nil,
        max_value_lines = 100,
      },
    })

    -- Aggiungi questa funzione per impostare i numeri di riga
    local function set_line_numbers()
      vim.cmd([[
        augroup DAPUILineNumbers
          autocmd!
          autocmd FileType dapui_* setlocal number
        augroup END
      ]])
    end

    -- Esegui la funzione dopo che dap-ui è stato configurato
    set_line_numbers()

    -- Il resto della tua configurazione DAP...
  end,
}
