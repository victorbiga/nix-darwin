{ config, pkgs, custom, ... }:
{
  home.username = custom.userName;
  home.stateVersion = "23.05"; # Please read the comment before changing.
  home.packages = with pkgs; [
    gnused
    kubectl
    kubectx
    istioctl
    sshs
    asciinema
    grpcurl
    kubernetes-helm
    helm-docs
    terraform
    terraform-docs
    terraform-ls
    wget
  ];

  home.file = {
    ".config/nvim".source = ./nvim;
  };

  home.sessionVariables = {
  };

  # Let Home Manager install and manage itself.
  programs = {
    home-manager = {
      enable = true;
    };
    jq = {
      enable = true;
    };
    go = {
      enable = true;
    };
    pyenv = {
      enable = true;
    };
    git = {
      enable = true;
      userName = "Victor Biga";
      userEmail = custom.email;
    };
    neovim = {
      enable = true;
      viAlias = true;
      vimAlias = true;
    };
  };
}
