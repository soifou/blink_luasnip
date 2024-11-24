local blink_luasnip = vim.api.nvim_create_augroup("cmp_luasnip", {})

vim.api.nvim_create_autocmd("User", {
  pattern = "LuasnipCleanup",
  callback = function()
    require("blink_luasnip").clear_cache()
  end,
  group = cmp_luasnip,
})

vim.api.nvim_create_autocmd("User", {
  pattern = "LuasnipSnippetsAdded",
  callback = function()
    require("blink_luasnip").refresh()
  end,
  group = blink_luasnip,
})
