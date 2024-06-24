{ inputs, pkgs, ... }:
{
  programs.firefox = {
    enable = true;
    nativeMessagingHosts = [ inputs.pipewire-screenaudio.packages.${pkgs.system}.default ];
  };
}
