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

  home.sessionVariables = { };

  # Let Home Manager install and manage itself.
  programs = {
    home-manager = {
      enable = true;
    };
    zsh = {
      enable = true;
      enableCompletion = true;
      autosuggestion = {
        enable = true;
      };
      shellAliases = import alias/alias.nix;
      plugins = [
        { name = "you-should-use"; src = "${pkgs.zsh-you-should-use}/share/zsh/plugins/you-should-use"; }
      ];
    };
    oh-my-posh = {
      enable = true;
      enableZshIntegration = true;
      # Themes available https://ohmyposh.dev/docs/themes
      useTheme = "catppuccin_frappe";
    };
    atuin = {
      enable = true;
      enableZshIntegration = true;
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
