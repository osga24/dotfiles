return {
  {
    "mfussenegger/nvim-dap",
    optional = true,
    config = function(_, opts)
      if type(opts) == "function" then
        opts()
      end
    end,
  },
}
