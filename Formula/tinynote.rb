class Tinynote < Formula
  desc "Raycast Notes in your terminal: a tiny markdown notes TUI over plain files"
  homepage "https://github.com/tinycomputer-io/tinynote"
  url "https://github.com/tinycomputer-io/tinynote/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "32874a38874ef35f6c60741805ad1278b6b18cc672edfb65e649a9f6e7ac5bfe"
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
