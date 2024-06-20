{ ... }: {
  i18n.inputMethod = {
    enabled = "fcitx5";
    fcitx5.waylandFrontend = true;
  };

  networking.hostName = "oyasumi";
  time.timeZone = "Asia/Ho_Chi_Minh";
}
