{ pkgs, ... }:
{
  users = {
    # prefer adding users here so it's easier to parse
    # you could just grep usernames in this file anyhow
    groups = {
      networkmanager.members = [ "flippette" ];
      wheel.members = [ "flippette" ];
    };

    users = {
      flippette = {
        isNormalUser = true;

        # ideally we would do this with home-manager,
        # but chsh requires root privileges
        shell = pkgs.fish;
      };
    };
  };
}
