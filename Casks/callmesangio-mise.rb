cask "callmesangio-mise" do
  arch arm: "arm64", intel: "x64"

  version "2026.10.23"
  sha256 arm:   "ef29b18f373ca90b8a1c9400acbe439d40758620870df705e1473095e87f461d",
         intel: "71e61df70e4ee824bc456912092dd9640ebdacce645dff7f2319d768a91fee06"

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
