{
  config,
  pkgs,
  ...
}: {
  imports = [
    ./gammastep.nix
    ./hyprpaper.nix
    ./mpris.nix
  ];
}
