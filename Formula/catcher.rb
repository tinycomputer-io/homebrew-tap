class Catcher < Formula
  desc "Minimal, local-first markdown notes TUI over plain files"
  homepage "https://github.com/tinycomputer-io/catcher"
  url "https://github.com/tinycomputer-io/catcher/archive/refs/tags/v0.13.0.tar.gz"
  sha256 "31b3f8af81dfb9e5283259379076a51cc2b92c1ce48e0f77c4599bb8ade14787"
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
