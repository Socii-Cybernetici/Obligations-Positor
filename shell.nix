{ pkgs, ... }: {
  # Devenv Docs: https://devenv.sh/basics/
  languages.python = {
    enable = true;
    uv = {
      enable = true;
      sync.enable = true;
    };
  };
}
