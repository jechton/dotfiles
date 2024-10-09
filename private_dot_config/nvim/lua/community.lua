-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  -- themes
  { import = "astrocommunity.colorscheme.gruvbox-nvim" },
  -- keep buffers confined to tabs
  { import = "astrocommunity.bars-and-lines.scope-nvim" },
  -- superior to astronvim's built-in, highlights more types (rgb, hsl)
  { import = "astrocommunity.color.nvim-highlight-colors" },
  { import = "astrocommunity.pack.rainbow-delimiter-indent-blankline" },
  -- open files that need sudo
  { import = "astrocommunity.editing-support.suda-vim" },
  -- commands to change text case
  { import = "astrocommunity.editing-support.text-case-nvim" },
  -- documentation generator
  { import = "astrocommunity.editing-support.vim-doge" },
  -- movement binds like vscode has
  { import = "astrocommunity.editing-support.vim-move" },
  -- edit your filesystem like a buffer
  { import = "astrocommunity.file-explorer.oil-nvim" },
  -- stops inactive lsp clients
  { import = "astrocommunity.lsp.garbage-day-nvim" },
  -- make typescript errors make sense
  { import = "astrocommunity.lsp.ts-error-translator-nvim" },
  { import = "astrocommunity.markdown-and-latex.glow-nvim" },
  -- change delimiters
  { import = "astrocommunity.motion.nvim-surround" },
  -- move by subwords
  { import = "astrocommunity.motion.nvim-spider" },
  -- smooth scrolling for any motion
  { import = "astrocommunity.scrolling.cinnamon-nvim" },
  -- disables search highlighting when you are done
  { import = "astrocommunity.syntax.vim-cool" },
  { import = "astrocommunity.syntax.hlargs-nvim" },
  -- open files and command output from terminals in your current instance
  { import = "astrocommunity.terminal-integration.flatten-nvim" },
  -- dim unused functions, variables, params, more
  { import = "astrocommunity.utility.neodim" },
  -- code/task runner
  { import = "astrocommunity.code-runner.overseer-nvim" },
  -- language packs
  { import = "astrocommunity.pack.astro" },
  { import = "astrocommunity.pack.bash" },
  { import = "astrocommunity.pack.chezmoi" },
  { import = "astrocommunity.pack.docker" },
  { import = "astrocommunity.pack.fish" },
  { import = "astrocommunity.pack.html-css" },
  { import = "astrocommunity.pack.just" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.mdx" },
  { import = "astrocommunity.pack.python-ruff" },
  { import = "astrocommunity.pack.tailwindcss" },
  { import = "astrocommunity.pack.toml" },
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.yaml" },
  -- import/override with your plugins folder
}
