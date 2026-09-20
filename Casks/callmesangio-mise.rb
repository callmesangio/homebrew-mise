cask "callmesangio-mise" do
  arch arm: "arm64", intel: "x64"

  version "2026.9.12"
  sha256 arm:   "01b15ea733709a2000a801533203e99c1490d9a3c13d45c8eb90ccefd0bd21f3",
         intel: "d055d033dd4c80a29e336b6e0ad51d86606c79fd7c49be6c898f5dc47704b975"

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
