return {
  -- Telescope https://github.com/nvim-telescope/telescope.nvim
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
  -- Treesitter https://github.com/nvim-treesitter/nvim-treesitter
  {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
  -- Neotree https://github.com/nvim-neo-tree/neo-tree.nvim
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
  },
}

