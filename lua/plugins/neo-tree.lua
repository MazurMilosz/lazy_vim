return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      filtered_items = {
        visible = true, -- Show hidden files by default
        hide_dotfiles = false, -- Do not hide dotfiles
        hide_gitignored = true, -- Hide files ignored by git
      },
    },
  },
  config = function(_, opts)
    require("neo-tree").setup(opts)
    vim.keymap.set("n", "<C-b>", "<CMD>Neotree toggle<CR>", {})
  end,
}
