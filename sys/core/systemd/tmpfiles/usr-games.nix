{
  systemd.tmpfiles.settings."10-usr-games"."/usr/games" = {
    d = {
      group = "games";
      mode = "0700";
      user = "root";
    };
  };
}
