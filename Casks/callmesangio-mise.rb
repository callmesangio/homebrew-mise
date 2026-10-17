cask "callmesangio-mise" do
  arch arm: "arm64", intel: "x64"

  version "2026.10.13"
  sha256 arm:   "f510dbd0177e8665aaae829e6b706cdcd088d0e288986ce5cd6c4271825a85e3",
         intel: "a6628f1f215871e0d8bb00c56303c59abe9e82825a1bc4c5674c27a34ed6337d"

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
