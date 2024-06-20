{ ... }: {
  boot.kernelParams = [
    "amd_pstate=active"
    "amdgpu.ppfeaturemask=0xfff7dfff"
    "cpufreq.default_governor=performance"
  ];
}
