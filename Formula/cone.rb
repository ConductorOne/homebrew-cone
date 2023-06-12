# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cone < Formula
  desc ""
  homepage "https://conductorone.com"
  version "0.0.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ConductorOne/cone/releases/download/v0.0.3/cone-v0.0.3-darwin-amd64.zip"
      sha256 "1b13110cd5cfcf20cac873598e2bfada1d423d6eed20052cb2287897d69cf718"

      def install
        bin.install "cone"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ConductorOne/cone/releases/download/v0.0.3/cone-v0.0.3-darwin-arm64.zip"
      sha256 "677bf87d9bb112ca57b3f9b373f77b6ed9e64d6bf01fa5cbbfe721eddd11eac8"

      def install
        bin.install "cone"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ConductorOne/cone/releases/download/v0.0.3/cone-v0.0.3-linux-arm64.tar.gz"
      sha256 "1ddec4c21c322939aca164a14cfff038e36aded1415d907c92f28ac97696343c"

      def install
        bin.install "cone"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ConductorOne/cone/releases/download/v0.0.3/cone-v0.0.3-linux-amd64.tar.gz"
      sha256 "ad449c18bba0e7c674adb3daf61bd50e83b0681211f8c190aed99aef6e225085"

      def install
        bin.install "cone"
      end
    end
  end

  test do
    system "#{bin}/cone -v"
  end
end
