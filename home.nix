{ config, pkgs, ... }:

{
  home.username = "victor";
  home.stateVersion = "23.05"; # Please read the comment before changing.
  home.packages = [
    pkgs.gnused
  ];

  home.file = {
    ".config/nvim".source = ./nvim;
  };

  home.sessionVariables = {
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
