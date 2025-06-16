{
  config,
  inputs,
  pkgs,
  ...
}: {
  programs.firefox = {
    enable = true;
    profiles.marika = {
      isDefault = true;
      settings = {
        "extensions.autoDisableScopes" = 0;

        "browser.uiCustomization.state" = {
          placements = {
            widget-overflow-fixed-list = [];
            unified-extensions-area = [];
            nav-bar = ["back-button" "forward-button" "stop-reload-button" "urlbar-container" "downloads-button" "unified-extensions-button"];
            toolbar-menubar = ["menubar-items"];
            TabsToolbar = ["tabbrowser-tabs" "new-tab-button"];
            vertical-tabs = [];
            PersonalToolbar = ["personal-bookmarks"];
          };
          seen = ["save-to-pocket-button" "developer-button" "ublock0_raymondhill_net-browser-action" "sponsorblocker_ajay_app-browser-action"];
          dirtyAreaCache = ["nav-bar" "vertical-tabs" "PersonalToolbar" "toolbar-menubar" "TabsToolbar" "unified-extensions-area"];
          currentVersion = 22;
          newElementCount = 2;
        };
      };
      extensions.packages = with inputs.firefox-addons.packages.${pkgs.system}; [
        sponsorblock
        ublock-origin
      ];
    };
  };
}
