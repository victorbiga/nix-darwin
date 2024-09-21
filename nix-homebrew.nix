{ inputs, custom, ... }: {
  nix-homebrew = {
    enable = true;
    enableRosetta = true;
    user = custom.userName;
    # We use a fully declarative setup of Homebrew.
    #mutableTaps = false;
    taps = {
      "homebrew/homebrew-core" = inputs.homebrew-core;
      "homebrew/homebrew-cask" = inputs.homebrew-cask;
      #"homebrew/homebrew-bundle" = inputs.homebrew-bundle;
    };
  };
}
