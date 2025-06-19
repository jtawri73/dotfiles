{
  config,
  pkgs,
  ...
}: {
  imports = [
    ./bluetooth.nix
    ./intel.nix
  ];
}
