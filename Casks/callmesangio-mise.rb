cask "callmesangio-mise" do
  arch arm: "arm64", intel: "x64"

  version "2026.11.9"
  sha256 arm:   "597924f55841a6f0218aebda5227c781437450b8557e4f7676368e2e99b8b1b8",
         intel: "91aeab7d88340965d7901d1c83c8a9645fcdd4498de3464d182820ac4cbb639e"

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
