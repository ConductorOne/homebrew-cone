# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cone < Formula
  desc ""
  homepage "https://conductorone.com"
  version "0.0.22"

  on_macos do
    on_intel do
      url "https://github.com/ConductorOne/cone/releases/download/v0.0.22/cone-v0.0.22-darwin-amd64.zip"
      sha256 "9aedd0246d684d29b8d3f3bda7ab7840aa90462b04080c44cb8b25787a445f80"

      def install
        bin.install "cone"
      end
    end
    on_arm do
      url "https://github.com/ConductorOne/cone/releases/download/v0.0.22/cone-v0.0.22-darwin-arm64.zip"
      sha256 "dc4a5d3a0bf71992dcd904ea2e5d0a53c8b5684034d64aeb636fd6383b04bf3b"

      def install
        bin.install "cone"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/ConductorOne/cone/releases/download/v0.0.22/cone-v0.0.22-linux-amd64.tar.gz"
        sha256 "184bd8234f8be297ae87585ed423b76a0399eb1b96d36a9d7a707f12e4a33e6b"

        def install
          bin.install "cone"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/ConductorOne/cone/releases/download/v0.0.22/cone-v0.0.22-linux-arm64.tar.gz"
        sha256 "bd0a3fcae98131001338f580ac384df6c619e2a59e6ee65ba2ac0ac9abd84f4c"

        def install
          bin.install "cone"
        end
      end
    end
  end

  test do
    system "#{bin}/cone -v"
  end
end
