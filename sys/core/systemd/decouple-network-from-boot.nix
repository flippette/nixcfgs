{ lib, ... }:
{
  systemd = {
    services.NetworkManager-wait-online.wantedBy = lib.mkForce [ ];
    targets.network-online.wantedBy = lib.mkForce [ ];
  };
}
