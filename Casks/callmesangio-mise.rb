cask "callmesangio-mise" do
  arch arm: "arm64", intel: "x64"

  version "2026.9.0"
  sha256 arm:   "1a80dac554bfbf96af29e2ffab9d79a02290733af505d013ff36e38d08b4cc08",
         intel: "a6eaa984fa292f5c4f6b9a96f40ab1ca466f58798e67c77af84463dca6918039"

  url "https://github.com/jdx/mise/releases/download/v#{version}/mise-v#{version}-macos-#{arch}.tar.xz"
  name "callmesangio-mise"
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
