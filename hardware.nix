{ config, lib, pkgs, ... }:

{
  boot.kernelParams = [ "apple_dcp.show_notch=1" ];
  
  powerManagement.enable = true;
  services.tlp.enable = true;

  # Asahi hardware config
  hardware.asahi = {
    peripheralFirmwareDirectory = ./firmware;
    withRust = true;
    setupAsahiSound = true;
    useExperimentalGPUDriver = true;
    experimentalGPUInstallMode = "replace";
  };

  hardware.graphics.enable = true;
}
