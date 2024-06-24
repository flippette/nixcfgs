{
  programs.git = {
    extraConfig = {
      init.defaultBranch = "main";
      core.autocrlf = false;
      color.ui = true;
    };

    enable = true;
    lfs.enable = true;
    userEmail = "me@flippo.cc";
    userName = "flippette";
  };
}
