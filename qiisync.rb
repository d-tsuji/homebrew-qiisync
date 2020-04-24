# This file was generated by GoReleaser. DO NOT EDIT.
class Qiisync < Formula
  desc "Qiita CLI tool, support push and pull from/to local filesystem and Qiita."
  homepage "https://github.com/d-tsuji/qiisync"
  version "0.0.2"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/d-tsuji/qiisync/releases/download/v0.0.2/qiisync_0.0.2_darwin_amd64.zip"
    sha256 "569b76654b5d7e24cee2951ab7ba72dc046411f79b7cb578ec1d96024d9064fa"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/d-tsuji/qiisync/releases/download/v0.0.2/qiisync_0.0.2_linux_amd64.zip"
      sha256 "b7ff8bf0960ba4256fe593e1a4f4bcf48716957e53f8296bea329e4b4825eb12"
    end
  end

  def install
    bin.install "qiisync"
  end

  test do
    system "#{bin}/qiisync"
  end
end
