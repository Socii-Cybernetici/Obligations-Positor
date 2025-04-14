{ pkgs, ... }: {
  # Devenv Docs: https://devenv.sh/basics/
  packages = with pkgs; [
    ruff-lsp
  ];
  languages.python = {
    enable = true;
    uv = {
      enable = true;
      sync.enable = true;
    };
  };
}
