{
  config,
  modulesPath,
  pkgs,
  ...
}: {
  imports = [
    (modulesPath + "/installer/scan/not-detected.nix")

    ./boot.nix
    ./filesystems.nix
    ./fonts
    ./i18n.nix
    ./hardware
    ./networking.nix
    ./programs
    ./security
    ./services
    ./time.nix
  ];

  # Nix
  nix.settings.experimental-features = ["nix-command" "flakes"];

  # Nixpkgs
  nixpkgs = {
    hostPlatform = "x86_64-linux";
    config.allowUnfree = true;
  };

  # User account
  users.users.marika = {
    shell = pkgs.fish;
    isNormalUser = true;
    extraGroups = ["networkmanager" "wheel"];
  };

  # State version
  system.stateVersion = "25.05";
}
