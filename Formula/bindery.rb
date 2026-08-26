class Bindery < Formula
  desc "Compile Markdown into a paginated, bound PDF via Gotenberg"
  homepage "https://github.com/bindery-md/bindery"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bindery-md/bindery/releases/download/v1.0.0/bindery-macos-aarch64"
      sha256 "b2ece41012f1d58ed556f5b2362522a8716ba1593e2c3db7d93809511e0e0a5b"
    end
    on_intel do
      url "https://github.com/bindery-md/bindery/releases/download/v1.0.0/bindery-macos-x86_64"
      sha256 "eb812b92958d631386d43881a2fd4f1824f6de3de15f13215baae42ef0f848af"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bindery-md/bindery/releases/download/v1.0.0/bindery-linux-aarch64"
      sha256 "bdb245e36c065f4695bab6dcc39e99579ee537cf45ba6d271df7f7f5e6f8ea4d"
    end
    on_intel do
      url "https://github.com/bindery-md/bindery/releases/download/v1.0.0/bindery-linux-x86_64"
      sha256 "ed0ded6c87eb4abcb477cc7709957b3744dfbb510008228ee83ee3ec2b50b905"
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
