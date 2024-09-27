[<img src="https://daiderd.com/nix-darwin/images/nix-darwin.png" width="200px" alt="logo" />](https://github.com/LnL7/nix-darwin)
# mac nix-darwin bootsrap

This guide provides instructions for setting up nix-darwin, a macOS framework based on Nix for managing macOS systems declaratively using Nix flakes. The steps outlined in this document cover the initial setup, which allows to have nix-darwin to manage your macOs in declarative way.

## Install x-code

```
touch /tmp/.com.apple.dt.CommandLineTools.installondemand.in-progress && \
softwareupdate -i "Command Line Tools for Xcode-16.0"
```

## Download and install nix package

```
# will be asked for root password, provide it to complete the installation
curl -JO -L https://install.determinate.systems/nix-installer-pkg/stable/Universal && \
sudo installer -pkg Determinate\ Nix.pkg -target /
rm Determinate\ Nix.pkg && \
rm /tmp/.com.apple.dt.CommandLineTools.installondemand.in-progress

```

## Update hostname(optional)

```
sudo scutil --set HostName Victors-Virtual-Machine 
sudo scutil --set LocalHostName Victors-Virtual-Machine
sudo scutil --set ComputerName Victors-Virtual-Machine 
```

## Switch to nix-darwin flake

Before you can execute this step RESTART you terminal session.

If you did `Update hostname` step

```
nix --extra-experimental-features "nix-command flakes" run -- nix-darwin switch --flake github:victorbiga/nixos-darwin
```

If you skipped `Update hostname` step

```
nix --extra-experimental-features "nix-command flakes" run -- nix-darwin switch --flake "github:victorbiga/nixos-darwin#Victors-Virtual-Machine"
```

If executed correctly nix-darwin installation will start. Root password will be required.
This might take couple of minutes. It depends on your Internet connection and Machine.

## End

Re-open shell to continue...

## Other notes
- to rebuild system upon new changes in master run `darwin-rebuild switch --flake github:victorbiga/nixos-darwin/master` or `darwin-rebuild switch --flake github:victorbiga/nixos-darwin/master#Victors-Virtual-Machine` if you use your own machine name.
