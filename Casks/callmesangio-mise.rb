cask "callmesangio-mise" do
  arch arm: "arm64", intel: "x64"

  version "2026.9.17"
  sha256 arm:   "1febb23b0ca92dd038d57f8cbb0a94f7257f29b575ce844b92bc8ee418e3532b",
         intel: "bcb96bdff746904a607761945a3d1bbc37a3276316bb957143009eb195bed56e"

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
