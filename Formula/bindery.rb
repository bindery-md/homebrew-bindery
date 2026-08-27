class Bindery < Formula
  desc "Compile Markdown into a paginated, bound PDF via Gotenberg"
  homepage "https://github.com/bindery-md/bindery"
  version "1.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bindery-md/bindery/releases/download/v1.3.0/bindery-macos-aarch64"
      sha256 "5acd6c0250b980676a3d9bb710a25d827f385280bdea0eec2ccb8fe815f3dc32"
    end
    on_intel do
      url "https://github.com/bindery-md/bindery/releases/download/v1.3.0/bindery-macos-x86_64"
      sha256 "57f9f67df3608dcb8552f0e1a304736a5b7e1f4da0d9222d85676cc25aadf921"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bindery-md/bindery/releases/download/v1.3.0/bindery-linux-aarch64"
      sha256 "9f33a1b1fb72f3390b64179ab2979e3e9d189dc6ab9450a48d0385dd3d13368c"
    end
    on_intel do
      url "https://github.com/bindery-md/bindery/releases/download/v1.3.0/bindery-linux-x86_64"
      sha256 "6704e3a28b817bc5fe13e79d8b96d8aecd58a87b6dffb671f1a2076d39ecdf29"
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
