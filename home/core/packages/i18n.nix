{ pkgs, ... }:
{
  # there's not a module for this :pensive:
  xdg.configFile."fcitx5/config".text = ''
    [Hotkey]
    EnumerateWithTriggerKeys=True
    EnumerateSkipFirst=False

    [Hotkey/TriggerKeys]
    0=Super+BackSpace

    [Behavior]
    ShareInputState=All
  '';

  i18n.inputMethod = {
    enabled = "fcitx5";
    fcitx5.addons = [ pkgs.fcitx5-unikey ];
  };
}
