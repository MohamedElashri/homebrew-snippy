class Snippy < Formula
  desc "Terminal client for the Snipo snippet manager"
  homepage "https://github.com/MohamedElashri/snipo"
  version "2.2.2"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/MohamedElashri/snipo/releases/download/v2.2.2/snippy_2.2.2_darwin_arm64.tar.gz"
      sha256 "f9655a48c5e21cad1a16428c6dc2952c616ee746171a1db57308f9588b6452f3"
    end
    on_intel do
      url "https://github.com/MohamedElashri/snipo/releases/download/v2.2.2/snippy_2.2.2_darwin_amd64.tar.gz"
      sha256 "fc99b387153fbb115f53a63d328d6ee3414a64ae0895a4b08cfb4d29281c22d6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/MohamedElashri/snipo/releases/download/v2.2.2/snippy_2.2.2_linux_arm64.tar.gz"
      sha256 "1b73873dacfff8669a82d5c4bb929c16f15494baf23c14ded0f1863fb7ff07e6"
    end
    on_intel do
      url "https://github.com/MohamedElashri/snipo/releases/download/v2.2.2/snippy_2.2.2_linux_amd64.tar.gz"
      sha256 "2d906bbcd6e5f5832ae9ef3cf6f24af085790592db2c9e687e085f4f03bc1f7b"
    end
  end

  def install
    bin.install "snippy"
  end

  test do
    assert_match "2.2.2", shell_output("#{bin}/snippy version")
  end
end
