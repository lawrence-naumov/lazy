-- Стрелки свёрнутых/развёрнутых блоков в statuscolumn (по умолчанию только свёрнутые)
return {
  "folke/snacks.nvim",
  opts = {
    statuscolumn = {
      folds = { open = true },
    },
  },
}
