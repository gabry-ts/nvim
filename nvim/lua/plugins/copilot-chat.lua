local wk = require("which-key")

wk.add({
  { "<leader>m", group = "CopilotChat" },

  { "<leader>mc", "<cmd>CopilotChat<cr>", desc = "Chat" },
  { "<leader>mL", "<cmd>CopilotChatLoad<cr>", desc = "Load chat history from file" },
  { "<leader>mS", "<cmd>CopilotChatSave<cr>", desc = "Save chat history to file" },
  -- { "<leader>md", "<cmd>CopilotChatDocs<cr>", desc = "Add documentation to selection", mode = "v" },
  { "<leader>me", "<cmd>CopilotChatExplain<cr>", desc = "Explain selected code", mode = "v" },
  { "<leader>mf", "<cmd>CopilotChatFix<cr>", desc = "Fix selected code", mode = "v" },
  { "<leader>mm", "<cmd>CopilotChatModels<cr>", desc = "View and select available models" },
  { "<leader>mo", "<cmd>CopilotChatOptimize<cr>", desc = "Optimize selected code", mode = "v" },
  -- { "<leader>mr", "<cmd>CopilotChatReview<cr>", desc = "Review selected code", mode = "v" },
  -- { "<leader>ms", "<cmd>CopilotChatStop<cr>", desc = "Stop current copilot output" },
  { "<leader>mt", "<cmd>CopilotChatTests<cr>", desc = "Generate tests for code" },
}, { prefix = "<leader>" })

return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    branch = "canary",
    dependencies = {
      { "zbirenbaum/copilot.lua" }, -- or github/copilot.vim
      { "nvim-lua/plenary.nvim" }, -- for curl, log wrapper
    },
    opts = {
      debug = true, -- Enable debugging
      -- See Configuration section for rest
    },
  },
}
