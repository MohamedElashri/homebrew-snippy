class Snippy < Formula
  desc "Terminal client for the Snipo snippet manager"
  homepage "https://github.com/MohamedElashri/snipo"
  version "2.2.5"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/MohamedElashri/snipo/releases/download/v2.2.5/snippy_2.2.5_darwin_arm64.tar.gz"
      sha256 "6e7ff1c4e492420a619c059720f898165c328590bc685a4d7f320a4c0addb93f"
    end
    on_intel do
      url "https://github.com/MohamedElashri/snipo/releases/download/v2.2.5/snippy_2.2.5_darwin_amd64.tar.gz"
      sha256 "f9899dc8247700eb12f4a917f5815f8b9ff4794f4b4658b1ec7cad5c93c85305"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/MohamedElashri/snipo/releases/download/v2.2.5/snippy_2.2.5_linux_arm64.tar.gz"
      sha256 "f1dcc21e6ad415716b885832e3b4bcbdf0864ea02f7c2e922743957b4c2bc018"
    end
    on_intel do
      url "https://github.com/MohamedElashri/snipo/releases/download/v2.2.5/snippy_2.2.5_linux_amd64.tar.gz"
      sha256 "0d627b29cfbf2e3eda4c154af70151d0bfcaa080d814bb509ee072d794134ec0"
    end
  end

  def install
    bin.install "snippy"
  end

  test do
    assert_match "2.2.5", shell_output("#{bin}/snippy version")
  end
end
