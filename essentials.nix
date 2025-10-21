# /etc/nixos/packages.nix
{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    git
    neovim
    flatpak
    vesktop
    qbittorrent
    vlc
    onlyoffice-desktopeditors
    thunderbird
    fastfetch
    steam-run
    python3Full
    obs-studio
    input-remapper
    gparted
    htop
    prismlauncher
    appimage-run
    tor-browser
    pharo
    logseq
    vscode
    jetbrains-toolbox
    tor-browser
    jdk24
    maven
    novelwriter
  ];

  #enable flatpak
  services.flatpak.enable = true;

  programs.steam = {
  enable = true;
  remotePlay.openFirewall = true; # Open ports in the firewall for Steam Remote Play
  dedicatedServer.openFirewall = true; # Open ports in the firewall for Source Dedicated Server
  localNetworkGameTransfers.openFirewall = true; # Open ports in the firewall for Steam Local Network Game Transfers
  };
  
  nixpkgs.config.permittedInsecurePackages = [
  "electron-27.3.11"
  ];
}
