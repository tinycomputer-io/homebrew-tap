class Catcher < Formula
  desc "Minimal, local-first markdown notes TUI over plain files"
  homepage "https://github.com/tinycomputer-io/catcher"
  url "https://github.com/tinycomputer-io/catcher/archive/refs/tags/v0.9.1.tar.gz"
  sha256 "9e8a8dfe03d31b4debaf2056bc3370b3bf836b3a1248e72516722baa9b633b2f"
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
