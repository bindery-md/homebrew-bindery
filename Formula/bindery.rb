class Bindery < Formula
  desc "Compile Markdown into a paginated, bound PDF via Gotenberg"
  homepage "https://github.com/bindery-md/bindery"
  version "1.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bindery-md/bindery/releases/download/v1.2.0/bindery-macos-aarch64"
      sha256 "45455a4ccd8b35595f2c0b0427e19adfdc8bca642d5a7dbfc388457fdbd3f900"
    end
    on_intel do
      url "https://github.com/bindery-md/bindery/releases/download/v1.2.0/bindery-macos-x86_64"
      sha256 "f18ba3d4ef0ebc564da7e1cc299b8c1d70b055a64d27f2b22b06123653b7d538"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bindery-md/bindery/releases/download/v1.2.0/bindery-linux-aarch64"
      sha256 "42e6735cc98726ca2469dd06f4727a9d14d018d95d935d78cdf33df73054b056"
    end
    on_intel do
      url "https://github.com/bindery-md/bindery/releases/download/v1.2.0/bindery-linux-x86_64"
      sha256 "cfc5601212dc653aa6200eaeac6b63418fb873d6480d75ef3ae68901f2e098bf"
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
