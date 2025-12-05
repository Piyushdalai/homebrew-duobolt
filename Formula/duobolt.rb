class Duobolt < Formula
  desc "Fast duplicate file finder using BLAKE3 hashing"
  homepage "https://duobolt.app"
  version "0.3.94"
  license "Freeware"

  on_macos do
    if Hardware::CPU.arm?
      url "https://downloads.duobolt.app/mac/cli/aarch64/duobolt-cli-0.3.94.tar.gz"
      sha256 "1d9686a2f091ab7f1d0c79ea86c0cdd2f87592f6c49ee5b04da6c78cdd41692e"
    else
      url "https://downloads.duobolt.app/mac/cli/x86_64/duobolt-cli-0.3.94.tar.gz"
      sha256 "063812ca2020f2ac8351aed4417721a8dbf4612903b6d62f84e12e98db3583fc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://downloads.duobolt.app/linux/cli/aarch64/duobolt-cli-0.3.94.tar.gz"
      sha256 "4e8c7db23f8f93e0add7d63eda13ce8308010b4da1bf7a5736d5ef18fe91a69c"
    else
      url "https://downloads.duobolt.app/linux/cli/x86_64/duobolt-cli-0.3.94.tar.gz"
      sha256 "0ac691d078c1736a17daff39f54ad82face25b562955e955054417b5b1cc7275"
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
