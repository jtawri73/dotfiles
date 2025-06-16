{
  config,
  pkgs,
  ...
}: {
  time = {
    timeZone = "Asia/Kolkata";
    hardwareClockInLocalTime = true;
  };
}
