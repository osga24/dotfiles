return {
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      opts.servers = opts.servers or {}
      opts.servers.pyright = opts.servers.pyright or {}

      local function get_python_path()
        local cwd = vim.fn.getcwd()

        local venv_python = cwd .. "/.venv/bin/python"
        if vim.fn.executable(venv_python) == 1 then
          return venv_python
        end

        return nil
      end

      opts.servers.pyright.settings = opts.servers.pyright.settings or {}
      opts.servers.pyright.settings.python = opts.servers.pyright.settings.python or {}

      local python_path = get_python_path()
      if python_path then
        opts.servers.pyright.settings.python.pythonPath = python_path
      end
    end,
  },
}
