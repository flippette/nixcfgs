{ pkgs, ... }: {
  environment = {
    shells = with pkgs; [
      fish
    ];

    systemPackages = with pkgs; [
      curl
      # (programs.git)
      # (programs.vim)
    ];
  };
}
