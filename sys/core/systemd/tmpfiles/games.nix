{
  systemd.tmpfiles.settings."10-games"."/games" = {
    d = {
      group = "games";
      mode = "0770";
      user = "root";
    };
  };
}
