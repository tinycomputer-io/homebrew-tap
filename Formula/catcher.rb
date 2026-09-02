class Catcher < Formula
  desc "Minimal, local-first markdown notes TUI over plain files"
  homepage "https://github.com/tinycomputer-io/catcher"
  url "https://github.com/tinycomputer-io/catcher/archive/refs/tags/v0.11.0.tar.gz"
  sha256 "ea4b7c417a3f925d619abefdaf2c9aafd1aac56c341e3bf14578909eb8afce4d"
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
