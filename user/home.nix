{
  config,
  inputs,
  pkgs,
  ...
}: {
  imports = [
    inputs.nvf.homeManagerModules.nvf

    ./gtk.nix
    ./programs
    ./services
  ];

  # Home
  home = {
    username = "marika";
    homeDirectory = "/home/marika";
  };

  # Packages
  home.packages = with pkgs; [
    telegram-desktop
  ];

  # Home Manager
  programs.home-manager.enable = true;

  # State version
  home.stateVersion = "25.05";
}
