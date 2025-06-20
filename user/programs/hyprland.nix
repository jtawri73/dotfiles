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

      # General
      general = {
        border_size = 2;
        "col.inactive_border" = "rgb(2e3440)";
        "col.active_border" = "rgb(8fbcbb)";

        gaps_in = 4;
        gaps_out = 4;
      };

      # Decoration
      decoration = {
        rounding = 4;
        blur.enabled = true;
        shadow.enabled = false;
      };

      # Animations
      animations = {
        enabled = true;
        animation = [
          "workspaces, 0"
          "global, 1, 3, default"
          "windows, 1, 3, default, popin 87%"
        ];
      };

      # Ecosystem
      ecosystem = {
        no_update_news = true;
        no_donation_nag = true;
      };

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

          "$mod, H, movefocus, l"
          "$mod, J, movefocus, d"
          "$mod, K, movefocus, u"
          "$mod, L, movefocus, r"

          "$modShift, H, movewindow, l"
          "$modShift, J, movewindow, d"
          "$modShift, K, movewindow, u"
          "$modShift, L, movewindow, r"

          "$mod, Comma, workspace, e-1"
          "$mod, Period, workspace, e+1"

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
