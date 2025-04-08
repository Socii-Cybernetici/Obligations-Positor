
{ pkgs, ... }:
{
  # Devenv Docs: https://devenv.sh/basics/
  languages.python.enable = true;
  languages.python.package = pkgs.python3.withPackages (python-pkgs: with python-pkgs; [
    # Add nix-packaged python libraries here: https://search.nixos.org/packages
    discordpy
    z3-solver
  ]);       
}
