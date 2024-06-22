{ ... }: {
  services.pipewire.extraConfig.pipewire."92-low-latency" = {
    # these are single keys, do not nest them
    "context.properties" = {
      "default.clock.rate" = 48000;
      "default.clock.quantum" = 16;
      "default.clock.min-quantum" = 16;
      "default.clock.max-quantum" = 16;
    };
  };
}
