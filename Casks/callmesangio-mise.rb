cask "callmesangio-mise" do
  arch arm: "arm64", intel: "x64"

  version "2026.11.2"
  sha256 arm:   "ab0527513f9d4d5d48e4c0c8ac7ab54c99679c82dbbbae90fc684b21adc4036a",
         intel: "899444ff9c15c10344a9d0737d801978f5ef6f76f3646fde480c82a8ebd10341"

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
