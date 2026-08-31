class Tinynote < Formula
  desc "Minimal, local-first markdown notes TUI over plain files"
  homepage "https://github.com/tinycomputer-io/tinynote"
  url "https://github.com/tinycomputer-io/tinynote/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "c347f7ba6473cbf58717472ef71a08c7979c1b04bfda9b8f61d3b1cca06634ea"
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
