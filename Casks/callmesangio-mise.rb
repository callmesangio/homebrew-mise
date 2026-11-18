cask "callmesangio-mise" do
  arch arm: "arm64", intel: "x64"

  version "2026.11.10"
  sha256 arm:   "24052df47015b511ec26cb36da6e36982cc1f3808ac8a5cc1611a351e039fa3d",
         intel: "3998bb17a8ad856e3b22a35eacd6d70bb6948d1155e3ea8eb32f953b2b033fac"

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
