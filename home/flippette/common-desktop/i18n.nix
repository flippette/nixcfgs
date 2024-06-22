{ pkgs, ... }: {
  # there's not a module for this :pensive:
  home.file = {
    ".config/fcitx5/config".text = ''
      [Hotkey]
      EnumerateWithTriggerKeys=True
      EnumerateSkipFirst=False

      [Hotkey/TriggerKeys]
      0=Super+BackSpace

      [Behavior]
      ShareInputState=All
    '';
    ".config/fcitx5/profile".text = ''
      [Groups/0]
      Name=Default
      Default Layout=us
      DefaultIM=unikey

      [Groups/0/Items/0]
      Name=keyboard-us

      [Groups/0/Items/1]
      Name=unikey

      [GroupOrder]
      0=Default
    '';
  };

  i18n.inputMethod = {
    enabled = "fcitx5";
    fcitx5.addons = [ pkgs.fcitx5-unikey ];
  };
}
