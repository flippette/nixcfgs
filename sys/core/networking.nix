{
  networking = {
    # we stan quad9
    nameservers = [
      "9.9.9.9"
      "149.112.112.112"
      "2620:fe::fe"
      "2620:fe::9"
    ];

    networkmanager.enable = true;
    nftables.enable = true;
  };
}
