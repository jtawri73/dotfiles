{
  config,
  inputs,
  pkgs,
  ...
}: {
  imports = [
    inputs.nvf.homeManagerModules.nvf

    ./programs
    ./services
  ];

  # Home
  home = {
    username = "marika";
    homeDirectory = "/home/marika";
  };

  # Home Manager
  programs.home-manager.enable = true;

  # State version
  home.stateVersion = "25.05";
}
