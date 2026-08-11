# typed: false
# frozen_string_literal: true

class Etherscan < Formula
  desc "Command-line client and interactive explorer for the Etherscan V2 API"
  homepage "https://github.com/etherscan/etherscan-cli"
  version "1.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/etherscan/etherscan-cli/releases/download/v1.0.1/etherscan_1.0.1_darwin_amd64.tar.gz"
      sha256 "958ec6621f8f5dd39a94ea2ee1f15227b9694c0310a5e2d0b599ce336becc684"
    end

    if Hardware::CPU.arm?
      url "https://github.com/etherscan/etherscan-cli/releases/download/v1.0.1/etherscan_1.0.1_darwin_arm64.tar.gz"
      sha256 "1504e4c8a18e9ff4b54ec7fcd99c30482b7e2bda1a68be7e95c0dec26743ac5a"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/etherscan/etherscan-cli/releases/download/v1.0.1/etherscan_1.0.1_linux_amd64.tar.gz"
      sha256 "b7267a4fd8296d2ef7a1810bc790e5a11df86a2ecdfac22839968121b7276ac2"
    end

    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/etherscan/etherscan-cli/releases/download/v1.0.1/etherscan_1.0.1_linux_arm64.tar.gz"
      sha256 "d9613df8e535f9a5c7f696b08bdc0747db873a50da8a3a9bc2557da554514ec9"
    end
  end

  def install
    bin.install "etherscan"
  end

  test do
    system "#{bin}/etherscan", "version"
  end
end
