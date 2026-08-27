class Bindery < Formula
  desc "Compile Markdown into a paginated, bound PDF via Gotenberg"
  homepage "https://github.com/bindery-md/bindery"
  version "1.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bindery-md/bindery/releases/download/v1.1.0/bindery-macos-aarch64"
      sha256 "d3824033ac9263d5a67eb39d8c5892e1783ebb45cbe26963d2965f6184b64c85"
    end
    on_intel do
      url "https://github.com/bindery-md/bindery/releases/download/v1.1.0/bindery-macos-x86_64"
      sha256 "d43e8162b74fb4027f2613ba5263e74624a9ef025231f6ad5c963872f3ae54a7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bindery-md/bindery/releases/download/v1.1.0/bindery-linux-aarch64"
      sha256 "bacbf359208c07a137abe7d08b734266a5c196531fa89ba72d1dd443fb758ee8"
    end
    on_intel do
      url "https://github.com/bindery-md/bindery/releases/download/v1.1.0/bindery-linux-x86_64"
      sha256 "21f072a07d13bc63850e6e82d8353a31140501446fbf94f770dc4d3d50c5f57d"
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
