class Snippy < Formula
  desc "Terminal client for the Snipo snippet manager"
  homepage "https://github.com/MohamedElashri/snipo"
  version "2.2.0"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/MohamedElashri/snipo/releases/download/v2.2.0/snippy_2.2.0_darwin_arm64.tar.gz"
      sha256 "7f5920b7f3caff622749a6ce3724cefa85d6d73b494a3380cb2c493531e620af"
    end
    on_intel do
      url "https://github.com/MohamedElashri/snipo/releases/download/v2.2.0/snippy_2.2.0_darwin_amd64.tar.gz"
      sha256 "df059e259c8003582c0d2f0994da1c97e4ae23be8c483e26602c4a94ff0e786e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/MohamedElashri/snipo/releases/download/v2.2.0/snippy_2.2.0_linux_arm64.tar.gz"
      sha256 "ed80d439e08e6b858847ed01b6f6280d33e6d97d8bcca3777c4ad0e31f8cc385"
    end
    on_intel do
      url "https://github.com/MohamedElashri/snipo/releases/download/v2.2.0/snippy_2.2.0_linux_amd64.tar.gz"
      sha256 "856cb78fb59576399dbcc137c533d9704827c4f71e263d4910e188d0e4841d95"
    end
  end

  def install
    bin.install "snippy"
  end

  test do
    assert_match "2.2.0", shell_output("#{bin}/snippy version")
  end
end
