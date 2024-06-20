{ pkgs, ... }: {
  users = {
    defaultUserShell = pkgs.fish;
    groups = {
      wheel.members = [ "flippette" ];
      networkmanager.members = [ "flippette" ];
    };
    users = {
      flippette = {
        initialHashedPassword = "";
        isNormalUser = true;
      };
    };
  };
}
