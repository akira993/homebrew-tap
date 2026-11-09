class MdqRg < Formula
  desc "Read-only Markdown search for AI agents"
  homepage "https://github.com/akira993/mdq-rg"
  version "0.2.0"
  license any_of: ["MIT", "Apache-2.0"]
  depends_on :macos
  depends_on arch: :arm64
  url "https://github.com/akira993/mdq-rg/releases/download/v0.2.0/mdq-rg-v0.2.0-aarch64-apple-darwin.tar.gz"
  sha256 "47bec44659a2b78fbc9063276fa413b333d48e67304090c819e5a95660746a87"
  def install
    bin.install "mdrg"
    doc.install "THIRD-PARTY-LICENSES.txt", "COPYRIGHT-library.html"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/mdrg --version")
  end
end
