return {
  "AstroNvim/astrocommunity",
  -- example of importing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  -- colorscheme
  { import = "astrocommunity.colorscheme.catppuccin" },
  
  -- copilot-lua-cmp
  { import = "astrocommunity.completion.copilot-lua-cmp" },


  --markdown 
  { import = "astrocommunity.markdown-and-latex.markmap-nvim" },

  { import = "astrocommunity.markdown-and-latex.markdown-preview-nvim"}, 
  -- { import = "astroommunity.markdown-and-latex.peek-nvim"}
  
  -- markdown-preview
  -- {"iamcco/markdown-preview.nvim",
  -- build = "cd app && npm install",
  -- ft = "markdown",
  -- }

}
