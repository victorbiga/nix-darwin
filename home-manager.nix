{ custom, ... }:
{
  home-manager.useGlobalPkgs = true;
  home-manager.extraSpecialArgs = { inherit custom; };
  home-manager.useUserPackages = true;
  home-manager.users.${custom.userName} = ./home.nix;
}
