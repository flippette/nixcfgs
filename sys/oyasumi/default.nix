{
  imports = [
    ../core
    ../../opts/amd_cpu.nix
    ../../opts/amd_gpu.nix
    ../../opts/cpu_gov_perf.nix
    ./filesystems.nix
    ./hardware-configuration.nix
    ./hostname.nix
    ./timezone.nix
  ];
}