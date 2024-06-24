{
  services.hyprpaper = {
    enable = true;

    settings =
      let
        wallpaper = builtins.fetchurl {
          url = "https://img3.gelbooru.com/images/08/46/0846e88933a1c85c59a8ccd640f1e0c0.png";
          sha256 = "30c9a69cc672b5cfd781f1f1a1be17d043b551e17c6ea2cf4c015c9c9a94fdc5";
        };
      in
      {
        preload = "${wallpaper}";
        wallpaper = ",${wallpaper}";
        splash = false;
      };
  };
}
