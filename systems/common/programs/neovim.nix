{ ... }: {
  programs.neovim = {
    defaultEditor = true;

    # managed by home-manager
    enable = false;

    viAlias = true;
    vimAlias = true;
  };
}
