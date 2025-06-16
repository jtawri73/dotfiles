{
  config,
  pkgs,
  ...
}: {
  imports = [
    ./firefox.nix
    ./fish.nix
    ./foot.nix
    ./git.nix
    ./hyprland.nix
    ./neovim.nix
  ];
}
