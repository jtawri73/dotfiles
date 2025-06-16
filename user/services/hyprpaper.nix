{
  config,
  pkgs,
  ...
}: let
  wallpaper = ../../wallpapers/minimal.png;
in {
  services.hyprpaper = {
    enable = true;
    settings = {
      splash = false;
      preload = ["${wallpaper}"];
      wallpaper = ["HDMI-A-1,${wallpaper}"];
    };
  };
}
