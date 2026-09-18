class Aweber < Formula
  desc "Command-line interface for the AWeber API"
  homepage "https://github.com/andrewrabert/aweber-cli"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/andrewrabert/aweber-cli/releases/download/v0.7.0/aweber-aarch64-apple-darwin.tar.gz"
      sha256 "83ee5bf57f8f7694fc504f1be1e1c021306d8435e7016369b3016fb54530c605"
    end
    on_intel do
      url "https://github.com/andrewrabert/aweber-cli/releases/download/v0.7.0/aweber-x86_64-apple-darwin.tar.gz"
      sha256 "9f9143895bd5b60c8aefab839b9e268e2fcbb925bd9ff3f65a367af99a066f08"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/andrewrabert/aweber-cli/releases/download/v0.7.0/aweber-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0f54e8057a13cec9c98b7a7320f3c1430248a0eab12ab965ac856df83821f585"
    end
    on_intel do
      url "https://github.com/andrewrabert/aweber-cli/releases/download/v0.7.0/aweber-x86_64-unknown-linux-musl.tar.gz"
      sha256 "02e3eca4350d196574ddaeb82733e7d095f7ca31876443be49cead2da98e2a2b"
    end
  end

  def install
    bin.install "aweber"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aweber --version")
  end
end
