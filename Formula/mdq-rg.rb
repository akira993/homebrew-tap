class MdqRg < Formula
  desc "Read-only Markdown search for AI agents"
  homepage "https://github.com/akira993/mdq-rg"
  version "0.1.0"
  license any_of: ["MIT", "Apache-2.0"]
  depends_on :macos
  depends_on arch: :arm64
  url "https://github.com/akira993/mdq-rg/releases/download/v0.1.0/mdq-rg-v0.1.0-aarch64-apple-darwin.tar.gz"
  sha256 "9a26aa86489a5d6bd279d220009c01f54131393c78b28ba754851d89221cf23c"
  def install
    bin.install "mdrg"
    doc.install "THIRD-PARTY-LICENSES.txt", "COPYRIGHT-library.html"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/mdrg --version")
  end
end
