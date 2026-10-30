cask "callmesangio-mise" do
  arch arm: "arm64", intel: "x64"

  version "2026.10.24"
  sha256 arm:   "6d45a0a47d3ecc9f17b879d058f8d7219bb1f097caedf185f7da95177f1e0c12",
         intel: "2cffe002c58a3157c598a95063bdd64d1dc29d93a9a129410a1a80a0fe7f33ee"

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
