return {
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = true,
    opts = {
      terminal_colors = true,
      undercurl = true,
      underline = true,
      bold = true,
      italic = {
        strings = true,
        comments = true,
        operators = false,
        folds = true,
      },
      strikethrough = true,
      invert_selection = false,
      invert_signs = false,
      invert_tabline = false,
      invert_intend_guides = false,
      inverse = true, -- inverte o fundo para busca, diffs, etc
      contrast = "hard", -- CRUCIAL: "hard" deixa o fundo mais escuro/preto, combinando com o wallpaper
      dim_inactive = false,
      transparent_mode = true, -- Essencial para ver o wallpaper no seu Arch/i3wm

      -- Opcional: Se quiser forçar mais o vermelho
      overrides = {
        -- Deixa a numeração da linha vermelha/laranja para combinar
        LineNr = { fg = "#fb4934" },
        -- Borda do Telescope avermelhada
        TelescopeBorder = { fg = "#fb4934" },
      },
    },
  },

  -- Diz ao LazyVim para carregar o gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },
}
