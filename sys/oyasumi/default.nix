{
  imports = [
    ../../opts/sys/amd_cpu.nix
    ../../opts/sys/amd_gpu.nix
    ../../opts/sys/bluetooth.nix
    ../../opts/sys/cpu_gov_perf.nix
    ../../opts/sys/pipewire_low_latency.nix
    ../../opts/sys/xone_adapter.nix
    ../core
    ./filesystems.nix
    ./hardware-configuration.nix
    ./hostname.nix
    ./timezone.nix
  ];
}
