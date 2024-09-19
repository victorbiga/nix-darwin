 { pkgs, custom, ... }: {

  services.nix-daemon.enable = true;
  # Necessary for using flakes on this system.
  nix.settings.experimental-features = "nix-command flakes";

  #system.configurationRevision = self.rev or self.dirtyRev or null;

  # Used for backwards compatibility. please read the changelog
  # before changing: `darwin-rebuild changelog`.
  system.stateVersion = 4;
  system.activationScripts.extraActivation.text = ''
    echo Installing Rosetta
    softwareupdate --install-rosetta --agree-to-license
  '';
  nixpkgs.hostPlatform = "aarch64-darwin";
  nixpkgs.config.allowUnfree = true;
  # Declare the user that will be running `nix-darwin`.
  users.users.${custom.userName} = {
    name = custom.userName;
    home = "/Users/" + custom.userName;
  };

  # Create /etc/zshrc that loads the nix-darwin environment.
  programs = {
    zsh = {
      enable = true;
      shellInit = ''
        eval $(brew shellenv)
      '';
    };
  };

  environment.systemPackages = with pkgs; [
    nixpkgs-fmt
    git
    neovim
  ];

  homebrew = {
    enable = true;
    brews = [
      "istioctl"
      "argocd"
    ];
    casks = [
      "google-chrome"
      "slack"
      "notion"
      "raspberry-pi-imager"
      "keycastr"
      "vlc"
      "calibre"
      "firefox"
      "iterm2"

    ];
  };
}
