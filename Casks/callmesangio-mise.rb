cask "callmesangio-mise" do
  arch arm: "arm64", intel: "x64"

  version "2026.11.8"
  sha256 arm:   "aadde457a974b210b9f977d5a6c36a227e51abbb4bf9db83262defd1f8b7b796",
         intel: "ea45bd5092eb7d298873201951ff47529811c6c743572519acace0ad57e3b9e8"

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
