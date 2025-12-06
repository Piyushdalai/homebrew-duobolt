class Duobolt < Formula
  desc "Fast duplicate file finder using BLAKE3 hashing"
  homepage "https://duobolt.app"
  version "0.3.109"
  license "Freeware"

  on_macos do
    if Hardware::CPU.arm?
      url "https://downloads.duobolt.app/mac/cli/aarch64/duobolt-cli-0.3.109.tar.gz"
      sha256 "818cad408b6d81a6bf9a9f2e7f027b91672cf5b2355a8aa5f92fa45556dcc5fd"
    else
      url "https://downloads.duobolt.app/mac/cli/x86_64/duobolt-cli-0.3.109.tar.gz"
      sha256 "1af6f02dc33fad726ea9c8c1d1050f3c1fc6e79eac1b61ce1a6506abe8ccbb40"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://downloads.duobolt.app/linux/cli/aarch64/duobolt-cli-0.3.109.tar.gz"
      sha256 "ccf9c2eebb2acb4f312e82c1bf438471f2bebe8ae2c5cc0f48e7789e7b9d1972"
    else
      url "https://downloads.duobolt.app/linux/cli/x86_64/duobolt-cli-0.3.109.tar.gz"
      sha256 "71c68ff7274fc63bd50ec9106723691378dd6de6f6cb7e90219ec6c97494d30f"
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
