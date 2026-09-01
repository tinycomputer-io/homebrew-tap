class Tinynote < Formula
  desc "Minimal, local-first markdown notes TUI over plain files"
  homepage "https://github.com/tinycomputer-io/tinynote"
  url "https://github.com/tinycomputer-io/tinynote/archive/refs/tags/v0.8.0.tar.gz"
  sha256 "542ad94bd88b013856a2c45c8b928a65c419d6bfe998515905a7b312c5b60bc0"
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
