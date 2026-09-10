cask "callmesangio-mise" do
  arch arm: "arm64", intel: "x64"

  version "2026.9.4"
  sha256 arm:   "ca9e32bdd4df4038fcc285dcaeaac54923c67f74088cca7f061b2076cdb2c5ae",
         intel: "afc427989057c1e8e634af348831f844024b95d49400e9c551387a3f4e2ebad1"

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
