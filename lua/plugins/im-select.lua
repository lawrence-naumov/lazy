-- При выходе из insert-режима переключает раскладку на английскую,
-- при входе возвращает ту, что была. Нужен macism: brew install laishulu/homebrew/macism
return {
  "keaising/im-select.nvim",
  event = "VeryLazy",
  opts = {
    default_command = "macism",
    default_im_select = "com.apple.keylayout.ABC",
  },
}
