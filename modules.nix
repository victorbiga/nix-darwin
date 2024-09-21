inputs: {
  modules = [
    inputs.nix-homebrew.darwinModules.nix-homebrew
    ./nix-homebrew.nix
    inputs.home-manager.darwinModules.home-manager
    ./home-manager.nix
    ./darwin-configuration.nix
  ];
}
