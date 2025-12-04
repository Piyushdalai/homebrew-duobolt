class Duobolt < Formula
  desc "Fast duplicate file finder using BLAKE3 hashing"
  homepage "https://duobolt.app"
  version "0.3.86"
  license "Freeware"

  on_macos do
    if Hardware::CPU.arm?
      url "https://downloads.duobolt.app/mac/cli/aarch64/duobolt-cli-0.3.86.tar.gz"
      sha256 "e6f68ffce2c9a9afcf6bf4177ba77be1f7f7c27b8296d183cff5ba77b2e4747c"
    else
      url "https://downloads.duobolt.app/mac/cli/x86_64/duobolt-cli-0.3.86.tar.gz"
      sha256 "220e4bb5eb60d1ce388863cdd74fa5c0cdf111e2a0ee8ef9887ed38b9d9364a9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://downloads.duobolt.app/linux/cli/aarch64/duobolt-cli-0.3.86.tar.gz"
      sha256 "ab2301018e7c419a8a60e5bccdcef71be4d1325d6b22bbf8f5c00884eb52421a"
    else
      url "https://downloads.duobolt.app/linux/cli/x86_64/duobolt-cli-0.3.86.tar.gz"
      sha256 "904ef031ca1c30ebfc63c1e5a5e86d630c9194f3d6814f984795d8e8501097fd"
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

      Docs: https://duobolt.app/docs/
    EOS
  end
end
