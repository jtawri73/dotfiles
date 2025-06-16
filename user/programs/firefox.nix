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
      };
      extensions.packages = with inputs.firefox-addons.packages.${pkgs.system}; [
        sponsorblock
        ublock-origin
      ];
    };
  };
}
