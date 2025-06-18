{
  config,
  pkgs,
  ...
}: {
  # ADB
  programs.adb.enable = true;

  # Add user to group
  users.users.marika.extraGroups = ["adbusers"];
}
