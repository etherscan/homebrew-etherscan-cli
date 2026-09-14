# typed: false
# frozen_string_literal: true

class Etherscan < Formula
  desc "Command-line client and interactive explorer for the Etherscan V2 API"
  homepage "https://github.com/etherscan/etherscan-cli"
  version "1.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/etherscan/etherscan-cli/releases/download/v1.1.1/etherscan_1.1.1_darwin_amd64.tar.gz"
      sha256 "e48101707e765307d3529ca3d239290bcae45b013a61ce14ace2b9a95ece8603"
    end

    if Hardware::CPU.arm?
      url "https://github.com/etherscan/etherscan-cli/releases/download/v1.1.1/etherscan_1.1.1_darwin_arm64.tar.gz"
      sha256 "d695f6397345e803c67148c62146a9ef8ee5075edffbe1e0031cd8272f20d602"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/etherscan/etherscan-cli/releases/download/v1.1.1/etherscan_1.1.1_linux_amd64.tar.gz"
      sha256 "33b5ae2bb688cc1aef4e97a41b87055013ed492aaf1651e66e3cd43aae24ee0a"
    end

    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/etherscan/etherscan-cli/releases/download/v1.1.1/etherscan_1.1.1_linux_arm64.tar.gz"
      sha256 "4918a2e5c7f477705be72f5b1878d6e7b9422efd02e243fb0643797cfe2cb366"
    end
  end

  def install
    bin.install "etherscan"
  end

  test do
    system "#{bin}/etherscan", "version"
  end
end
