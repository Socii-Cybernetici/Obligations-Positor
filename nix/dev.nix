{ pkgs, ... }: {
  # Devenv Docs: https://devenv.sh/basics/
  packages = with pkgs; [
    ruff-lsp
    pyright
  ];
  languages.python.enable = true;
  languages.python.uv.enable = true;
}
