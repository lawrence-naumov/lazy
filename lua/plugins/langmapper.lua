-- Дублирует маппинги (включая <leader>, <C-...> и маппинги плагинов) на
-- кириллическую раскладку. Движения и операторы покрывает langmap в options.lua.
return {
  "Wansmer/langmapper.nvim",
  lazy = false,
  priority = 10000, -- раньше остальных плагинов, чтобы перехватить их vim.keymap.set
  config = function()
    local langmapper = require("langmapper")
    langmapper.setup({
      -- ` и ~ на этой раскладке дают ] и [, поэтому их не переводим
      default_layout = [=[ABCDEFGHIJKLMNOPQRSTUVWXYZ<>:"{}abcdefghijklmnopqrstuvwxyz,.;'[]]=],
      use_layouts = { "ky" }, -- без встроенной раскладки "ru" по умолчанию
      layouts = {
        ky = {
          id = "com.kamagames.keyboardlayout.kyrgyzkg.kyrgyz",
          layout = "ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯБЮЖЭХЪфисвуапршолдьтщзйкыегмцчнябюжэхъ",
        },
      },
    })
    langmapper.hack_get_keymap()

    -- встроенные и vimscript-маппинги, созданные в обход vim.keymap.set
    vim.api.nvim_create_autocmd("User", {
      pattern = "VeryLazy",
      once = true,
      callback = function()
        langmapper.automapping({ global = true, buffer = false })
      end,
    })
  end,
}
