cask "callmesangio-mise" do
  arch arm: "arm64", intel: "x64"

  version "2026.9.13"
  sha256 arm:   "aa932aa022f946975469fb8c6048e89559d321f51daeab0589c1194789557fb5",
         intel: "2f1b553f7998c745f8fa9ee64cc37b2157b7edbc381a96e91541fa8df69e48a2"

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
