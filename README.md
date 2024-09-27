[<img src="https://daiderd.com/nix-darwin/images/nix-darwin.png" width="200px" alt="logo" />](https://github.com/LnL7/nix-darwin)
# mac nix-darwin bootsrap

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
rm Determinate\ Nix.pkg
```

## Update hostname(optional)

```
sudo scutil --set HostName Victors-Virtual-Machine 
sudo scutil --set LocalHostName Victors-Virtual-Machine
sudo scutil --set ComputerName Victors-Virtual-Machine 
```

## Switch to nix-darwin flake
```
# if you did Update hostname step
nix --extra-experimental-features "nix-command flakes" run -- nix-darwin switch --flake github:victorbiga/nixos-darwin
# if you skipped Update hostname step
nix --extra-experimental-features "nix-command flakes" run -- nix-darwin switch --flake "github:victorbiga/nixos-darwin#Victors-Virtual-Machine"
```

## End
```
close the shell or re-open shell to continue...
```

## Other notes
- to rebuild system upon new changes in master run `darwin-rebuild switch --flake github:victorbiga/nixos-darwin/master`
