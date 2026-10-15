cask "callmesangio-mise" do
  arch arm: "arm64", intel: "x64"

  version "2026.10.11"
  sha256 arm:   "8cf78384382d5df52e7b897a05053e01cfa96108e642d6b7f300c4a80ed43422",
         intel: "59e463b8aef9425a48478c1536c998be8aa0e54f197b184688c2420aa79e4da3"

  url "https://github.com/jdx/mise/releases/download/v#{version}/mise-v#{version}-macos-#{arch}.tar.xz"
  name "mise"
  desc "Dev tools, environment variables, and tasks in one project config"
  homepage "https://mise.jdx.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  binary "mise/bin/mise"
  manpage "mise/man/man1/mise.1"
  generate_completions_from_executable "mise/bin/mise", "completion"
end
