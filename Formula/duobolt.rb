class Duobolt < Formula
  desc "Fast duplicate file finder using BLAKE3 hashing"
  homepage "https://duobolt.app"
  version "0.3.91"
  license "Freeware"

  on_macos do
    if Hardware::CPU.arm?
      url "https://downloads.duobolt.app/mac/cli/aarch64/duobolt-cli-0.3.91.tar.gz"
      sha256 "4cca78d42744bb2dacfd9904e5384a027f8d9b51e53b5392a16bf74ff6e05ee0"
    else
      url "https://downloads.duobolt.app/mac/cli/x86_64/duobolt-cli-0.3.91.tar.gz"
      sha256 "37eb0abab749002d657e9e09cf25db743780056753228ddf20163b555f8083d3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://downloads.duobolt.app/linux/cli/aarch64/duobolt-cli-0.3.91.tar.gz"
      sha256 "38fb7fd623744527f603bd76de68dc5a27fec9749403c2267f1f41a8950e2de6"
    else
      url "https://downloads.duobolt.app/linux/cli/x86_64/duobolt-cli-0.3.91.tar.gz"
      sha256 "0b7751b9b67520460f62d99ee4e3d97aa3595825cbd0b9d64d29918753245093"
    end
  end

  def install
    bin.install "duobolt-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/duobolt-cli --version")
    system "#{bin}/duobolt-cli", "--help"
  end

  def caveats
    <<~EOS
      CLI usage:
        duobolt-cli <directory...> [options]
        duobolt-cli ~/Documents --ignore-system-files --output=json
        duobolt-cli --help

      Docs: https://duobolt.app/cli-usage/
    EOS
  end
end
