class Duobolt < Formula
  desc "Fast duplicate file finder using BLAKE3 hashing"
  homepage "https://duobolt.app"
  version "0.3.92"
  license "Freeware"

  on_macos do
    if Hardware::CPU.arm?
      url "https://downloads.duobolt.app/mac/cli/aarch64/duobolt-cli-0.3.92.tar.gz"
      sha256 "db82e73f5f52a298e464bbf7e79a4d8008ab5f68bf5da35a7b4fdfd96073eba9"
    else
      url "https://downloads.duobolt.app/mac/cli/x86_64/duobolt-cli-0.3.92.tar.gz"
      sha256 "eef5c4a15743f1fc78edc9d0b9d9986be89ea6747ed45b7770da03c129ef530d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://downloads.duobolt.app/linux/cli/aarch64/duobolt-cli-0.3.92.tar.gz"
      sha256 "e3b76303318bac11888df05de046c6e4df2b42bb0450e957f689284e85b637c1"
    else
      url "https://downloads.duobolt.app/linux/cli/x86_64/duobolt-cli-0.3.92.tar.gz"
      sha256 "4963c089406c851c0fe2dc8febffaad04372492f25e1f11cd42f7d1858c6f9fc"
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
