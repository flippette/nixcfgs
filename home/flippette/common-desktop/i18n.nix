{ pkgs, ... }: {
  i18n.inputMethod = {
    enabled = true;
    addons = [ pkgs.fcitx5-unikey ];
  };
}
