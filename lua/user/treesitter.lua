local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  return
end

configs.setup {
  -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  -- phpdoc fails on arm64, so this is entire list from https://github.com/nvim-treesitter/nvim-treesitter except phpdoc
  ensure_installed = "astro bash beancount bibtex c c_sharp clojure cmake comment commonlisp cooklang cpp css cuda d dart devicetree dockerfile dot eex elixir elm elvish embedded_template erlang fennel fish foam fortran fusion Godot gleam Glimmer glsl go Godot gomod gowork graphql hack haskell hcl heex help hjson hocon html http java javascript jsdoc json json5 JSON julia kotlin lalrpop latex ledger llvm lua m68k make markdown ninja nix norg ocaml ocaml_interface ocamllex org pascal perl php pioasm prisma proto pug python ql Tree-sitter r rasi regex rego rst ruby rust scala scheme scss slint solidity sparql supercollider surface svelte swift teal tlaplus todotxt toml tsx turtle typescript v vala verilog vim vue wgsl yaml yang zig",
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
