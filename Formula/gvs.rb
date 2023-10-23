# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gvs < Formula
  desc "A command line tool to manage multiple active Go versions."
  homepage "https://github.com/VassilisPallas/gvs"
  version "0.0.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/VassilisPallas/gvs/releases/download/0.0.10/gvs_0.0.10_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "8b1456b426d71ede7ad754a8dfdf0da09dbedf3c45bd2d6ceb04a60376336377"

      def install
        bin.install "gvs"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/VassilisPallas/gvs/releases/download/0.0.10/gvs_0.0.10_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "4aae238d10d1364730b33f2dab0fc399a4b5a56956c0a19eda1dc9a1458feac6"

      def install
        bin.install "gvs"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/VassilisPallas/gvs/releases/download/0.0.10/gvs_0.0.10_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "ef7f739917f150136dd6f6bb781637eda907d5f940c158dea6136db519cc9b85"

      def install
        bin.install "gvs"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/VassilisPallas/gvs/releases/download/0.0.10/gvs_0.0.10_linux_armv6.tar.gz", using: CurlDownloadStrategy
      sha256 "a016cbf27e074dca0cf273d98d3c75cec807ee1e40d94f847ad30d396f710d8b"

      def install
        bin.install "gvs"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/VassilisPallas/gvs/releases/download/0.0.10/gvs_0.0.10_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "7943e0ea0678b84d1533a77b3f8b137583ec99a07d0c2ac6858e9aea74d1d673"

      def install
        bin.install "gvs"
      end
    end
  end

  conflicts_with "go"

  def caveats
    <<~EOS
      Type 'gvs' on your command line and choose the Go version that you want from the dropdown. This command currently only works on macOS and Linux.
    EOS
  end

  test do
    system "#{bin}/gvs --version"
  end
end
