# typed: false
# frozen_string_literal: true

class Etherscan < Formula
  desc "Command-line client and interactive explorer for the Etherscan V2 API"
  homepage "https://github.com/etherscan/etherscan-cli"
  version "1.0.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/etherscan/etherscan-cli/releases/download/v1.0.7/etherscan_1.0.7_darwin_amd64.tar.gz"
      sha256 "2327f066b04361c74d47647bce3f7b8673c55c74b3af1333f514c89ece41e82c"
    end

    if Hardware::CPU.arm?
      url "https://github.com/etherscan/etherscan-cli/releases/download/v1.0.7/etherscan_1.0.7_darwin_arm64.tar.gz"
      sha256 "f15a61c3dceb91d592de0ab0d27c93ef41ecf61d4b76bca8f2aa8a379cc57a04"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/etherscan/etherscan-cli/releases/download/v1.0.7/etherscan_1.0.7_linux_amd64.tar.gz"
      sha256 "68fd2a681cc69e58da067453f63ad263f54a64ab534eee074f73c5b1d328b2bf"
    end

    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/etherscan/etherscan-cli/releases/download/v1.0.7/etherscan_1.0.7_linux_arm64.tar.gz"
      sha256 "81f9efe78d36fb81a6113e9e036ddfc215702eb52eb40bf14f768508e06a99ac"
    end
  end

  def install
    bin.install "etherscan"
  end

  test do
    system "#{bin}/etherscan", "version"
  end
end
