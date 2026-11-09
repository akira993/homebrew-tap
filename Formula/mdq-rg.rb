class MdqRg < Formula
  desc "Read-only Markdown search for AI agents"
  homepage "https://github.com/akira993/mdq-rg"
  url "https://github.com/akira993/mdq-rg/releases/download/v0.3.0/mdq-rg-v0.3.0-aarch64-apple-darwin.tar.gz"
  sha256 "cb930b135aeda41aaac242a4660070a57765ce80e2146eabb8515ef68a42e298"
  license any_of: ["MIT", "Apache-2.0"]
  depends_on arch: :arm64
  depends_on :macos
  def install
    bin.install "mdrg"
    doc.install "THIRD-PARTY-LICENSES.txt", "COPYRIGHT-library.html"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/mdrg --version")
  end
end
