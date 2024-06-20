{ ... }: {
  programs = {
    fish = {
      enable = true;
      useBabelfish = true;
    };

    git = {
      config = {
        init.defaultBranch = "main";
        core.autocrlf = false;
        color.ui = true;
      };
      enable = true;
      lfs.enable = true;
    };

    vim.defaultEditor = true;
  };
}
