{
  config,
  pkgs,
  ...
}: {
  fileSystems = {
    "/" = {
      device = "/dev/disk/by-label/NIXOS";
      fsType = "ext4";
    };

    "/boot" = {
      device = "/dev/disk/by-label/ESP";
      fsType = "vfat";
      options = ["fmask=0077" "dmask=0077"];
    };

    "/home" = {
      device = "/dev/disk/by-label/HOME";
      fsType = "ext4";
    };
  };
}
