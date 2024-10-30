---@diagnostic disable: missing-fields
return {
  { "peterhoeg/vim-qml" },
  { "artoj/qmake-syntax-vim" },
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = { "qmljs", "qmldir" },
        sync_install = false,
        auto_install = true,
        highlight = {
          enable = true,
        },
      })
    end,
  },
}
