cask "callmesangio-mise" do
  arch arm: "arm64", intel: "x64"

  version "2026.9.16"
  sha256 arm:   "e09aeaf5ff42fd6ad8e5006f9a01ea121319f88fb6ac239bb8aa77d4bee17237",
         intel: "d0a9fb6d542614ec0eb38caec41a36466571a276b6c56945ad96d3080298ac65"

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
