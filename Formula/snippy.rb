class Snippy < Formula
  desc "Terminal client for the Snipo snippet manager"
  homepage "https://github.com/MohamedElashri/snipo"
  version "2.0.1"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/MohamedElashri/snipo/releases/download/v2.0.1/snippy_2.0.1_darwin_arm64.tar.gz"
      sha256 "8db1b16d67c1ab8dd0b21f75d0ee0b1c4e47b443a0ed6579ae2c5f036592822c"
    end
    on_intel do
      url "https://github.com/MohamedElashri/snipo/releases/download/v2.0.1/snippy_2.0.1_darwin_amd64.tar.gz"
      sha256 "bff298610e8e58e0c8451507931836f28f24119137716113cfbbc51732e26609"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/MohamedElashri/snipo/releases/download/v2.0.1/snippy_2.0.1_linux_arm64.tar.gz"
      sha256 "a3c9dfb058f48f49b8580aefa7cf71e3fe426ca138618eca63471db5b712e8ce"
    end
    on_intel do
      url "https://github.com/MohamedElashri/snipo/releases/download/v2.0.1/snippy_2.0.1_linux_amd64.tar.gz"
      sha256 "ab4d4178a3cc7d15358af720cd8d0e56723973aa8fab4fd137cc54a409a1fc51"
    end
  end

  def install
    bin.install "snippy"
  end

  test do
    assert_match "2.0.1", shell_output("#{bin}/snippy version")
  end
end
