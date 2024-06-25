{ pkgs, ... }:
{
  users = {
    # prefer adding users here so it's easier to parse
    # you could just grep usernames in this file anyhow
    groups = {
      gamemode.members = [ "flippette" ];

      # for rwx permissions to /games
      games.members = [ "flippette" ];

      networkmanager.members = [ "flippette" ];
      pipewire.members = [ "flippette" ];
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
