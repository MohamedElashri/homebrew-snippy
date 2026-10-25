class Snippy < Formula
  desc "Terminal client for the Snipo snippet manager"
  homepage "https://github.com/MohamedElashri/snipo"
  version "2.0.0"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/MohamedElashri/snipo/releases/download/v2.0.0/snippy_2.0.0_darwin_arm64.tar.gz"
      sha256 "f2ffb25d685730a14bb656ae26062445866395a9404bdfa1e22864cf0f3623d6"
    end
    on_intel do
      url "https://github.com/MohamedElashri/snipo/releases/download/v2.0.0/snippy_2.0.0_darwin_amd64.tar.gz"
      sha256 "07c9d08692f3871754069693d5b4e1f32aaf0b4357e2ab0c3377ddea0ec7011b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/MohamedElashri/snipo/releases/download/v2.0.0/snippy_2.0.0_linux_arm64.tar.gz"
      sha256 "ec4ac7a413797488f2f1ea005e23b37fd965cac595342eaa46c4e87bead37e13"
    end
    on_intel do
      url "https://github.com/MohamedElashri/snipo/releases/download/v2.0.0/snippy_2.0.0_linux_amd64.tar.gz"
      sha256 "2bb17feb8127dda418bcec14028779bf84b460fbe08c6fc118318f6ff3c56afe"
    end
  end

  def install
    bin.install "snippy"
  end

  test do
    assert_match "2.0.0", shell_output("#{bin}/snippy version")
  end
end
