class Catcher < Formula
  desc "Minimal, local-first markdown notes TUI over plain files"
  homepage "https://github.com/tinycomputer-io/catcher"
  url "https://github.com/tinycomputer-io/catcher/archive/refs/tags/v0.10.0.tar.gz"
  sha256 "11509a6ead6526edd828a303b00c457026d47a3c8a51e11abf8d30b253ce3194"
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
