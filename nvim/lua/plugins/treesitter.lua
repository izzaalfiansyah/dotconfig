return {
  "nvim-treesitter/nvim-treesitter",
  branch = "master",
  lazy = false,
  build = ":TSUpdate",
  opts = {
    ensure_installed = {
      "html",
      "php",
      "javascript",
      "sql",
      "python",
      "typescript",
      "vue",
      "css",
      "json5",
      "rust",
      "ron",
      "go",
      "gomod",
      "gowork",
      "gosum",
      "scss",
      "ninja",
      "rst",
      "markdown",
      "markdown_inline",
      "yaml",
      -- "http",
      -- "graphlql",
      -- "prettier",
    },
  },
  config = function(_, opts)
    require("nvim-treesitter.configs").setup(opts)

    ---@class parser_config
    local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
    parser_config.blade = {
      install_info = {
        url = "https://github.com/EmranMR/tree-sitter-blade",
        files = { "src/parser.c" },
        branch = "main",
      },
      filetype = "blade",
    }

    vim.filetype.add({
      pattern = {
        [".*%.blade%.php"] = "blade",
      },
    })
  end,
}
