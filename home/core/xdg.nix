{ config, ... }:
{
  home.preferXdgDirectories = true;

  xdg = {
    enable = true;
    mime.enable = true;
    mimeApps.enable = true;

    userDirs =
      let
        homeDir = config.home.homeDirectory;
      in
      {
        createDirectories = true;
        desktop = "${homeDir}/desktop";
        documents = "${homeDir}/documents";
        download = "${homeDir}/downloads";
        enable = true;
        music = "${homeDir}/music";
        pictures = "${homeDir}/pictures";
        publicShare = "${homeDir}/public";
        templates = "${homeDir}/templates";
        videos = "${homeDir}/videos";
      };
  };
}
