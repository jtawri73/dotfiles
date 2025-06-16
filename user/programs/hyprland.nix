{
  config,
  pkgs,
  ...
}: let
  # Number of workspaces
  workspaces = 6;
in {
  # Hyprland
  wayland.windowManager.hyprland = {
    enable = true;
    settings = {
      "$mod" = "SUPER";
      "$modShift" = "$mod SHIFT";

      # Monitors
      monitor = [
        "eDP-1,disable"
        "HDMI-A-1,1920x1080@60,0x0,1"
      ];

      # Keybindings
      bind =
        [
          "$mod, B, exec, firefox"
          "$mod, Return, exec, foot"

          "$mod, Q, killactive"

          "$mod, X, exec, reboot"
          "$modShift, X, exec, poweroff"
        ]
        ++ (builtins.concatLists (builtins.genList (i: let
            ws = i + 1;
          in [
            "$mod, ${builtins.toString ws}, workspace, ${builtins.toString ws}"
            "$modShift, ${builtins.toString ws}, movetoworkspacesilent, ${builtins.toString ws}"
          ])
          workspaces));
    };
  };

  # Session variables
  home.sessionVariables.NIXOS_OZONE_WL = "1";
}
