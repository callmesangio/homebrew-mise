cask "callmesangio-mise" do
  arch arm: "arm64", intel: "x64"

  version "2026.10.14"
  sha256 arm:   "86660549ef546a4d491c9f7829112f5f5157d5a41a660ddaab059e6284bf51fe",
         intel: "c1685f6bc717666a4a48f48d460ae958b66cd409a2b5fcc28a7d32cb5129ad91"

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
