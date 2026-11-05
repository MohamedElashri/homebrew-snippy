class Snippy < Formula
  desc "Terminal client for the Snipo snippet manager"
  homepage "https://github.com/MohamedElashri/snipo"
  version "2.1.0"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/MohamedElashri/snipo/releases/download/v2.1.0/snippy_2.1.0_darwin_arm64.tar.gz"
      sha256 "3dfb6c21d8261e1a9c8b7f4728dfee1878d02140383149f86dcf5f4296756103"
    end
    on_intel do
      url "https://github.com/MohamedElashri/snipo/releases/download/v2.1.0/snippy_2.1.0_darwin_amd64.tar.gz"
      sha256 "987976a16af31bfbc0e2bd8552cc24744f70a51117a5e684214cf0ad1ebf78be"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/MohamedElashri/snipo/releases/download/v2.1.0/snippy_2.1.0_linux_arm64.tar.gz"
      sha256 "c7a772118c5372246420c1ad904e2fe62b9e618a3b96561f31bac0796e43960c"
    end
    on_intel do
      url "https://github.com/MohamedElashri/snipo/releases/download/v2.1.0/snippy_2.1.0_linux_amd64.tar.gz"
      sha256 "cfe4d258304e04ea8a5e739a654adaf358a62387e507fd5a457fdf9ea1fa8dec"
    end
  end

  def install
    bin.install "snippy"
  end

  test do
    assert_match "2.1.0", shell_output("#{bin}/snippy version")
  end
end
