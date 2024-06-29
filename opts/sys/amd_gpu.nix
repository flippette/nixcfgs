{pkgs, ...}: {
  boot.kernelParams = ["amdgpu.ppfeaturemask=0xfff7dfff"];
  environment.systemPackages = [pkgs.lact];
  systemd.packages = [pkgs.lact];

  systemd.services.lactd = {
    enable = true;
    wantedBy = ["multi-user.target"];
  };
}
