{ ... }: {
  programs.git = {
    config = {
      init.defaultBranch = "main";
      core.autocrlf = false;
      color.ui = true;
    };

    enable = true;
    lfs.enable = true;
  };
}
