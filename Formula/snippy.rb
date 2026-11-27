class Snippy < Formula
  desc "Terminal client for the Snipo snippet manager"
  homepage "https://github.com/MohamedElashri/snipo"
  version "2.2.4"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/MohamedElashri/snipo/releases/download/v2.2.4/snippy_2.2.4_darwin_arm64.tar.gz"
      sha256 "8ad0737a57888a1dfe6627664124c587d17a9cfa0cea91835e979a69f80b6472"
    end
    on_intel do
      url "https://github.com/MohamedElashri/snipo/releases/download/v2.2.4/snippy_2.2.4_darwin_amd64.tar.gz"
      sha256 "3834b17f85ac5c6367c3787ce24d31d17dfd49a25c165bc0b607c9f5915d2fd5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/MohamedElashri/snipo/releases/download/v2.2.4/snippy_2.2.4_linux_arm64.tar.gz"
      sha256 "03d190af2bece6f9eebfa2ced2df9580b2b4a8456c6e96fd722c34ae9b3b1ae5"
    end
    on_intel do
      url "https://github.com/MohamedElashri/snipo/releases/download/v2.2.4/snippy_2.2.4_linux_amd64.tar.gz"
      sha256 "3d45cac756dabf7eab05de0893fbfa8f8f514fa7f3bab15b3e757fa02547b21e"
    end
  end

  def install
    bin.install "snippy"
  end

  test do
    assert_match "2.2.4", shell_output("#{bin}/snippy version")
  end
end
