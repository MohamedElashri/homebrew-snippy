class Snippy < Formula
  desc "Terminal client for the Snipo snippet manager"
  homepage "https://github.com/MohamedElashri/snipo"
  version "2.0.2"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/MohamedElashri/snipo/releases/download/v2.0.2/snippy_2.0.2_darwin_arm64.tar.gz"
      sha256 "288e0664f76eb0c0b1c6db45ff6d3ade32f8352b9a785638ea99cf0ef2059f7f"
    end
    on_intel do
      url "https://github.com/MohamedElashri/snipo/releases/download/v2.0.2/snippy_2.0.2_darwin_amd64.tar.gz"
      sha256 "0436a3ad0c22c7fd015eb170ef619b4ca10148e4f2d33c55bb71649fca0982ab"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/MohamedElashri/snipo/releases/download/v2.0.2/snippy_2.0.2_linux_arm64.tar.gz"
      sha256 "278243d282dfab6ad904dc1bb3ced3c3effa7a487c2e50243bd992604011f8db"
    end
    on_intel do
      url "https://github.com/MohamedElashri/snipo/releases/download/v2.0.2/snippy_2.0.2_linux_amd64.tar.gz"
      sha256 "82a7601487b830d5bfb702e4f02e430034921a6a15b4a636a5ce3b3b57ef84ec"
    end
  end

  def install
    bin.install "snippy"
  end

  test do
    assert_match "2.0.2", shell_output("#{bin}/snippy version")
  end
end
