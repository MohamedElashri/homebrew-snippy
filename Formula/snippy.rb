class Snippy < Formula
  desc "Terminal client for the Snipo snippet manager"
  homepage "https://github.com/MohamedElashri/snipo"
  version "2.2.3"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/MohamedElashri/snipo/releases/download/v2.2.3/snippy_2.2.3_darwin_arm64.tar.gz"
      sha256 "b89fb6ad818bdb5b7d19352699dcd16b29aee012a7292bb70c461ad9656c0916"
    end
    on_intel do
      url "https://github.com/MohamedElashri/snipo/releases/download/v2.2.3/snippy_2.2.3_darwin_amd64.tar.gz"
      sha256 "9f27f17cde18e5bf0b9feabfd67f3725c469569c8c3cb14a879f7cdc434ed5fc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/MohamedElashri/snipo/releases/download/v2.2.3/snippy_2.2.3_linux_arm64.tar.gz"
      sha256 "afeacfb4c7579cdb573cd6220f08f5962569012ae53b2465ff16beb7287a0921"
    end
    on_intel do
      url "https://github.com/MohamedElashri/snipo/releases/download/v2.2.3/snippy_2.2.3_linux_amd64.tar.gz"
      sha256 "4f1540a2ea5caa4fa077dfca423f47513de50237f68bdf1d0f10015db298975d"
    end
  end

  def install
    bin.install "snippy"
  end

  test do
    assert_match "2.2.3", shell_output("#{bin}/snippy version")
  end
end
