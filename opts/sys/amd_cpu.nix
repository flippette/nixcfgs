{
  boot = {
    blacklistedKernelModules = ["kvm_amd"];
    kernelParams = ["amd_pstate=active"];
  };
}
