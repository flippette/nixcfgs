{
  services.pipewire.extraConfig.pipewire."92-low-latency" = {
    "context.properties" = {
      "default.clock.rate" = 48000;
      "default.clock.quantum" = 16;
      "default.clock.min-quantum" = 16;
      "default.clock.max-quantum" = 16;
    };
  };
}
