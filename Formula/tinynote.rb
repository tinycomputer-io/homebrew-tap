class Tinynote < Formula
  desc "Raycast Notes in your terminal: a tiny markdown notes TUI over plain files"
  homepage "https://github.com/tinycomputer-io/tinynote"
  url "https://github.com/tinycomputer-io/tinynote/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "0d56156ac4e0fd55edd495b0b94878c965d6c995bd00496e0ccb60d650a7142f"
  license "MIT"
  head "https://github.com/tinycomputer-io/tinynote.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_predicate bin/"tinynote", :exist?
  end
end
