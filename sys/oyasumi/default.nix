{
  imports = [
    ../../opts/sys/amd_cpu.nix
    ../../opts/sys/amd_gpu.nix
    ../../opts/sys/cpu_gov_perf.nix
    ../core
    ./filesystems.nix
    ./hardware-configuration.nix
    ./hostname.nix
    ./timezone.nix
  ];
}
