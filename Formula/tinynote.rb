class Tinynote < Formula
  desc "Minimal, local-first markdown notes TUI over plain files"
  homepage "https://github.com/tinycomputer-io/tinynote"
  url "https://github.com/tinycomputer-io/tinynote/archive/refs/tags/v0.4.1.tar.gz"
  sha256 "9b73758a272b79ead538d102129db9360e5ad8308edcb693f85c02c3929c77b4"
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
