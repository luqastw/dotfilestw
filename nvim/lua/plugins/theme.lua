return {
  {
    "EdenEast/nightfox.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("nightfox").setup({
        options = {
          transparent = true, -- Ative se quiser ver o wallpaper através do terminal
          styles = {
            comments = "italic",
            keywords = "bold",
            types = "italic,bold",
          },
        },
        palettes = {
          carbonfox = {
            -- Tons baseados na fumaça do wallpaper
            bg1 = "#0a0a0a", -- Fundo profundo
            fg1 = "#d1d1d1", -- Texto principal
            sel0 = "#2a2a2a", -- Cor de seleção (cinza fumaça)
            comment = "#666666", -- Comentários discretos
          },
        },
        specs = {
          carbonfox = {
            syntax = {
              keyword = "#78868c", -- Azul-carbono da névoa
              ident = "#d1d1d1", -- Identificadores em cinza claro
              string = "#a0a0a0", -- Strings em cinza médio
            },
          },
        },
      })
      vim.cmd("colorscheme carbonfox")
    end,
  },
}
