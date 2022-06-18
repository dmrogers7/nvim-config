local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  return
end

configs.setup {
  -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  ensure_installed = "bash clojure cmake comment cpp css dart dockerfile dot go gomod gowork graphql hcl help hjson html http java javascript jsdoc json json5 JSON kotlin lua make markdown proto pug python Tree-sitter regex rego rust scala scheme scss slint todotxt toml tsx typescript vim vue yaml",
  sync_install = false, -- install languages synchronously (only applied to `ensure_installed`)
  ignore_install = { "" }, -- List of parsers to ignore installing
  autopairs = {
    enable = true,
  },
  highlight = {
    enable = true, -- false will disable the whole extension
    disable = { "" }, -- list of language that will be disabled
    additional_vim_regex_highlighting = true,
  },
  indent = { enable = true, disable = { "yaml" } },
  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  },
}
