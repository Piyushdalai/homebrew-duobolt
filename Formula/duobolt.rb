class Duobolt < Formula
  desc "Fast duplicate file finder using BLAKE3 hashing"
  homepage "https://duobolt.app"
  version "0.3.90"
  license "Freeware"

  on_macos do
    if Hardware::CPU.arm?
      url "https://downloads.duobolt.app/mac/cli/aarch64/duobolt-cli-0.3.90.tar.gz"
      sha256 "e4a8da013e3d8b5550fbdfdc6006afe628385af8b02a37720212d293350381c8"
    else
      url "https://downloads.duobolt.app/mac/cli/x86_64/duobolt-cli-0.3.90.tar.gz"
      sha256 "47e6b10ede253b8160419272ff549af37527c3edf0d394423bb93faf6ce7ccf2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://downloads.duobolt.app/linux/cli/aarch64/duobolt-cli-0.3.90.tar.gz"
      sha256 "5d9c97c98c07d7c70697a8bfb669b1b49addc71effaaa6f6f4512aa9b1578929"
    else
      url "https://downloads.duobolt.app/linux/cli/x86_64/duobolt-cli-0.3.90.tar.gz"
      sha256 "e8638f2c201c785f147ff8dee4593819e75f59d518f8272ff322045a8b9002a2"
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
