class Catcher < Formula
  desc "Minimal, local-first markdown notes TUI over plain files"
  homepage "https://github.com/tinycomputer-io/catcher"
  url "https://github.com/tinycomputer-io/catcher/archive/refs/tags/v0.13.1.tar.gz"
  sha256 "c305460c3d5b6e7dea6d7941192609068548df92705cb3cc0d6d75cd11929159"
  license "MIT"
  head "https://github.com/tinycomputer-io/catcher.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_predicate bin/"catcher", :exist?
  end
end
