class Slinktool < Formula
  desc "All-in-one SeedLink client for data streaming"
  homepage "https://github.com/EarthScope/slinktool"
  url "https://github.com/EarthScope/slinktool/archive/refs/tags/v5.0.0.tar.gz"
  version "5.0.0" # Sostituisci con la versione o la data corrente
  sha256 "58c48f871bb29e6384d4160112e29d0352f7d27008d9f7168df05d078f2a4246"
  license "Apache-2.0"

  def install
    system "make"

    bin.install "slinktool"

    man1.install "doc/slinktool.1"
  end

  test do
    system "#{bin}/slinktool", "-V"
  end
end

