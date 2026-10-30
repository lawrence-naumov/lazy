-- При выходе из insert-режима переключает раскладку на английскую,
-- при входе возвращает ту, что была. Командную строку (:) не трогаем. Нужен macism: brew install laishulu/homebrew/macism
return {
  "keaising/im-select.nvim",
  event = "VeryLazy",
  opts = {
    default_command = "macism",
    default_im_select = "com.apple.keylayout.ABC",
    set_default_events = { "InsertLeave" }, -- по умолчанию ещё CmdlineLeave
  },
}
