class Sccache < Formula
  desc "sccache with multi-level cache support (SafetyCulture fork)"
  homepage "https://github.com/scmichaelg/sccache"
  version "0.15.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/scmichaelg/sccache/releases/download/v0.15.3/sccache_0.15.3_darwin_arm64.tar.gz"
      sha256 "f7460aa465dc47a07e0fd149efd79085bd7ff1a38ad06cb89c1dda04becce4e3"
    end
    on_intel do
      url "https://github.com/scmichaelg/sccache/releases/download/v0.15.3/sccache_0.15.3_darwin_amd64.tar.gz"
      sha256 "e647346a8441647e2dd1bb835540eee8161bf32e5342b5da00cb335ebf39343c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/scmichaelg/sccache/releases/download/v0.15.3/sccache_0.15.3_linux_arm64.tar.gz"
      sha256 "830aadb3dcaf21bd7e7820530c3a85e5a404d8988085e705820a14d5894199cb"
    end
    on_intel do
      url "https://github.com/scmichaelg/sccache/releases/download/v0.15.3/sccache_0.15.3_linux_amd64.tar.gz"
      sha256 "4c69c9b259c3d97d8d238687e2d650e27ca3cba0811c7a0327a4780727c186f2"
    end
  end

  def install
    bin.install "sccache"
  end

  test do
    assert_match "sccache", shell_output("#{bin}/sccache --version")
  end
end
