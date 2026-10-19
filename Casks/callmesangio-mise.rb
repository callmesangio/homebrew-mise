cask "callmesangio-mise" do
  arch arm: "arm64", intel: "x64"

  version "2026.10.15"
  sha256 arm:   "63bd56601d070dbf9446581bfb0dda5a4ff9dd77c7c7659b07a209848137a941",
         intel: "f1aacdcedfaf4b0f12259362b17ae0e5ed0648b725f96de902cc9de92d4fe590"

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
