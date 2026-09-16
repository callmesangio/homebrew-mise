cask "callmesangio-mise" do
  arch arm: "arm64", intel: "x64"

  version "2026.9.10"
  sha256 arm:   "354e189c82353ad840528a6a724d35a41f9ae61033340ab8461e9d46b2f38022",
         intel: "1d7fab23f420c141ed1ca6fe893bfb7c2ed34c2a57cd061750339a888d7e263c"

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
