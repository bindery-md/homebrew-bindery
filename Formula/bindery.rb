class Bindery < Formula
  desc "Compile Markdown into a paginated, bound PDF via Gotenberg"
  homepage "https://github.com/aashan10/bindery"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aashan10/bindery/releases/download/v0.1.0/bindery-macos-aarch64"
      sha256 "8a79170881323bdbf45ee405f45eeb7b274c7c2cc468168de5b069e629f4aa7a"
    end
    on_intel do
      url "https://github.com/aashan10/bindery/releases/download/v0.1.0/bindery-macos-x86_64"
      sha256 "297ea98cc7f41908faa426c688bb6cdb5dea0759fe660d30cf6a47aec361a30f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aashan10/bindery/releases/download/v0.1.0/bindery-linux-aarch64"
      sha256 "647f764086dc976bd70dd3f03556a52eb50787b42d465f24bdba3a4122538f0c"
    end
    on_intel do
      url "https://github.com/aashan10/bindery/releases/download/v0.1.0/bindery-linux-x86_64"
      sha256 "e58473ce2a3b8203ba26e3da03bd28cd23ffe1487be387e1aa824e736db5b421"
    end
  end

  def install
    source = Dir["bindery-*"].first
    bin.install source => "bindery"
    chmod 0755, bin/"bindery"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bindery --version")
  end
end
