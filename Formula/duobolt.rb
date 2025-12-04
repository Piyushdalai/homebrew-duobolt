class Duobolt < Formula
  desc "Fast duplicate file finder using BLAKE3 hashing"
  homepage "https://duobolt.app"
  version "0.3.85"
  license "Freeware"

  on_macos do
    if Hardware::CPU.arm?
      url "https://downloads.duobolt.app/mac/cli/aarch64/duobolt-cli-0.3.85.tar.gz"
      sha256 "2e15cc2a2b85b0ecfd72bffb332c411f0a311bd79466ad0009e52d2d5ef4d2ef"
    else
      url "https://downloads.duobolt.app/mac/cli/x86_64/duobolt-cli-0.3.85.tar.gz"
      sha256 "682af62bc73cb5385ed787ffd716f677a9ddfccf63e97513018e1e293e3fd27e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://downloads.duobolt.app/linux/cli/aarch64/duobolt-cli-0.3.85.tar.gz"
      sha256 "8f34399b3f80a92af75743bbceac2bcabf16a3e7a1b3be90d661af1bc7bd1a21"
    else
      url "https://downloads.duobolt.app/linux/cli/x86_64/duobolt-cli-0.3.85.tar.gz"
      sha256 "80316303f3b16e17ed3f52796b4e8eec50a80075aade0a0a35dc54ef395e9505"
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
      Documentation: https://duobolt.app/docs/

      Usage:
        duobolt-cli scan /path/to/folder
        duobolt-cli --help
    EOS
  end
end
