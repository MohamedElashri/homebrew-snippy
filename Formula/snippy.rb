class Snippy < Formula
  desc "Terminal client for the Snipo snippet manager"
  homepage "https://github.com/MohamedElashri/snipo"
  version "2.2.1"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/MohamedElashri/snipo/releases/download/v2.2.1/snippy_2.2.1_darwin_arm64.tar.gz"
      sha256 "16a190b78b2265300e1d2b1c11e210ef4daa03513c7cf7b685eb1abb52f5f9de"
    end
    on_intel do
      url "https://github.com/MohamedElashri/snipo/releases/download/v2.2.1/snippy_2.2.1_darwin_amd64.tar.gz"
      sha256 "a53b8c2a160d1889bcebb51e52831845c0919a6811a19295f6799e37e222ed6c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/MohamedElashri/snipo/releases/download/v2.2.1/snippy_2.2.1_linux_arm64.tar.gz"
      sha256 "9128f96064782bb9c10c580b48637e0404eba86e2af8df8505442616de3ac7bf"
    end
    on_intel do
      url "https://github.com/MohamedElashri/snipo/releases/download/v2.2.1/snippy_2.2.1_linux_amd64.tar.gz"
      sha256 "706ac2726200ddf27c533eb73ae0279e669471a05694690e4a24f5e42c3ae18f"
    end
  end

  def install
    bin.install "snippy"
  end

  test do
    assert_match "2.2.1", shell_output("#{bin}/snippy version")
  end
end
