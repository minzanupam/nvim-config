function print_hello()
  vim.api.nvim_put({ "hello world" }, "", false, true)
end
