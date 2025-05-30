return {
  "ThePrimeagen/refactoring.nvim",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  keys = {
    {
      "<leader>ps",
      function()
        require("telescope").extensions.refactoring.refactors()
      end,
      mode = "v",
      desc = "Refactor",
    },
    {
      "<leader>pi",
      function()
        require("refactoring").refactor("Inline Variable")
      end,
      mode = { "n", "v" },
      desc = "Inline Variable",
    },
    {
      "<leader>pb",
      function()
        require("refactoring").refactor("Extract Block")
      end,
      desc = "Extract Block",
    },
    {
      "<leader>pf",
      function()
        require("refactoring").refactor("Extract Block To File")
      end,
      desc = "Extract Block To File",
    },
    {
      "<leader>pP",
      function()
        require("refactoring").debug.printf({ below = false })
      end,
      desc = "Debug Print",
    },
    {
      "<leader>pp",
      function()
        require("refactoring").debug.print_var({ normal = true })
      end,
      desc = "Debug Print Variable",
    },
    {
      "<leader>pc",
      function()
        require("refactoring").debug.cleanup({})
      end,
      desc = "Debug Cleanup",
    },
    {
      "<leader>pf",
      function()
        require("refactoring").refactor("Extract Function")
      end,
      mode = "v",
      desc = "Extract Function",
    },
    {
      "<leader>pF",
      function()
        require("refactoring").refactor("Extract Function To File")
      end,
      mode = "v",
      desc = "Extract Function To File",
    },
    {
      "<leader>px",
      function()
        require("refactoring").refactor("Extract Variable")
      end,
      mode = "v",
      desc = "Extract Variable",
    },
    {
      "<leader>pp",
      function()
        require("refactoring").debug.print_var()
      end,
      mode = "v",
      desc = "Debug Print Variable",
    },
  },
  opts = {
    prompt_func_return_type = {
      go = false,
      java = false,
      cpp = false,
      c = false,
      h = false,
      hpp = false,
      cxx = false,
    },
    prompt_func_param_type = {
      go = false,
      java = false,
      cpp = false,
      c = false,
      h = false,
      hpp = false,
      cxx = false,
    },
    printf_statements = {},
    print_var_statements = {},
  },
  config = function(_, opts)
    require("refactoring").setup(opts)
    if LazyVim.has("telescope.nvim") then
      LazyVim.on_load("telescope.nvim", function()
        require("telescope").load_extension("refactoring")
      end)
    end
  end,
}
