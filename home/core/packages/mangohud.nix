{
  programs.mangohud = {
    enable = true;

    settings = {
      gpu_temp = true;
      gpu_junction_temp = true;
      gpu_core_clock = true;
      gpu_mem_clock = true;
      gpu_power = true;
      gpu_fan = true;
      gpu_voltage = true;

      cpu_temp = true;
      cpu_power = true;
      cpu_mhz = true;

      core_load = true;

      io_read = true;
      io_write = true;

      vram = true;
      ram = true;
      swap = true;

      fps = true;
      frametime = true;

      frame_timing = true;

      font_size = 20;
      text_outline_thickness = 0;

      position = "middle-left";

      round_corners = 4;

      width = 220;
      table_columns = 3;

      background_alpha = 0.6;
    };
  };
}
