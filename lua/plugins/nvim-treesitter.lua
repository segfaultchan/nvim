return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ":TSUpdate",
  main = 'nvim-treesitter.configs',
  opts = {
    auto_install = true,
    highlight = { enable = true },
    indent = { enable = true },
    folds = { enable = true },
    
    ensure_installed = {
      -- база
      "c", "cpp", "zig", "rust", "go", "gomod", "gowork", "python",
      "lua", "luadoc", "luap",

      -- баш и ассемблер
      "bash",
      "nasm",

      -- конфиги
      "nix", "yaml", "toml", "jsonc", "dockerfile", "make", "cmake",
      "gitignore", "gitattributes",

      -- БД и API
      "sql", "proto", "regex", "graphql", "json",

      -- JS/TS - два всадника апокалипсиса для оперативки
      "javascript", "typescript", "tsx", "jsdoc",

      -- документация и тексты
      "markdown", "markdown_inline", "comment", "vimdoc",

      -- редкость
      "query",
      "vim",
      "diff", "git_rebase",
    },
    auto_install = true,
    hightlight = { enable = true },
  },
}
