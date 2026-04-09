class Sccache < Formula
  desc "sccache with multi-level cache support (SafetyCulture fork)"
  homepage "https://github.com/scmichaelg/sccache"
  version "0.14.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/scmichaelg/sccache/releases/download/v0.14.1/sccache-v0.14.1-aarch64-apple-darwin.tar.gz"
      sha256 "85849b19373c8fce97cd2178f08ad1b7ebf18d4c12184c94f00b381661168f48"
    end
  end

  def install
    bin.install "sccache"
  end

  test do
    assert_match "sccache", shell_output("#{bin}/sccache --version")
  end
end
