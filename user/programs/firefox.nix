{
  config,
  pkgs,
  ...
}: {
  programs.firefox = {
    enable = true;
    profiles.marika.isDefault = true;
  };
}
