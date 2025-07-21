return {
  {
    "kiyoon/jupynium.nvim",
    build = "pip3 install --user .",
    -- build = "uv pip install . --python=$HOME/.virtualenvs/jupynium/bin/python",
    -- build = "conda run --no-capture-output -n jupynium pip install .",
  },
  { "rcarriga/nvim-notify" }, -- optional
  { "stevearc/dressing.nvim" }, -- optional, UI for :JupyniumKernelSelect
}
