class Snippy < Formula
  desc "Terminal client for the Snipo snippet manager"
  homepage "https://github.com/MohamedElashri/snipo"
  version "2.1.1"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/MohamedElashri/snipo/releases/download/v2.1.1/snippy_2.1.1_darwin_arm64.tar.gz"
      sha256 "6d244937970fe93db375e39071b9f8b3b65f051a526cfb8d7d24d623c60c5c0d"
    end
    on_intel do
      url "https://github.com/MohamedElashri/snipo/releases/download/v2.1.1/snippy_2.1.1_darwin_amd64.tar.gz"
      sha256 "461470bfda7abe63883b598bcd1dc3b964024ddd924c589bc3fecb6d72057a78"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/MohamedElashri/snipo/releases/download/v2.1.1/snippy_2.1.1_linux_arm64.tar.gz"
      sha256 "fadfdde8e14130ae7a46d0bbf7f4566494994fbead7d9aae8df552e051b94479"
    end
    on_intel do
      url "https://github.com/MohamedElashri/snipo/releases/download/v2.1.1/snippy_2.1.1_linux_amd64.tar.gz"
      sha256 "67015322c767d6dfb6b4ffdacb324efde2ade06803af341b2c099eac52ac5aa6"
    end
  end

  def install
    bin.install "snippy"
  end

  test do
    assert_match "2.1.1", shell_output("#{bin}/snippy version")
  end
end
