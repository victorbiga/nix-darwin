{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    nix-homebrew.url = "github:zhaofengli-wip/nix-homebrew";
    homebrew-core = {
      url = "github:homebrew/homebrew-core";
      flake = false;
    };
    homebrew-cask = {
      url = "github:homebrew/homebrew-cask";
      flake = false;
    };
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
    nix-darwin.url = "github:LnL7/nix-darwin";
    nix-darwin.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { self, nixpkgs, nix-darwin, nix-homebrew, home-manager, homebrew-core, homebrew-cask, ... }@ inputs:
    let
      inherit (self) outputs;
      custom = import ./vars.nix;
    in
    {
      darwinConfigurations.${custom.hostname} = nix-darwin.lib.darwinSystem {
        specialArgs = { inherit custom inputs; };
        system = "aarch64-darwin";
        modules = (import ./modules.nix inputs).modules;
      };
    };
}
