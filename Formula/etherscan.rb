# typed: false
# frozen_string_literal: true

class Etherscan < Formula
  desc "Command-line client and interactive explorer for the Etherscan V2 API"
  homepage "https://github.com/etherscan/etherscan-cli"
  version "1.0.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/etherscan/etherscan-cli/releases/download/v1.0.8/etherscan_1.0.8_darwin_amd64.tar.gz"
      sha256 "adf19503884a240e3256703ab1b2c5efe135aa63f78d7afab041b8685e17c5ae"
    end

    if Hardware::CPU.arm?
      url "https://github.com/etherscan/etherscan-cli/releases/download/v1.0.8/etherscan_1.0.8_darwin_arm64.tar.gz"
      sha256 "2438ea7f591188edcd00d7aca178aad7e075b1129b3a7701d351b9445774dc1c"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/etherscan/etherscan-cli/releases/download/v1.0.8/etherscan_1.0.8_linux_amd64.tar.gz"
      sha256 "68b52966b1bee9479a399765d1ba7e8bae240e71027a63d46095b7f3fc3dc992"
    end

    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/etherscan/etherscan-cli/releases/download/v1.0.8/etherscan_1.0.8_linux_arm64.tar.gz"
      sha256 "e025705c7b20a8ee560dba36b243bcac4892b026335ef6fe78e470f04da3752a"
    end
  end

  def install
    bin.install "etherscan"
  end

  test do
    system "#{bin}/etherscan", "version"
  end
end
