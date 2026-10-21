cask "callmesangio-mise" do
  arch arm: "arm64", intel: "x64"

  version "2026.10.17"
  sha256 arm:   "8eb476e56f680a9347ce29346768d84174f631a37e0317759e2e2a565830ca5d",
         intel: "d0875f35ce55abfcfe5222d976322a793cf0abf266e1d7c9ec18b9d0dbd4ce6b"

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
