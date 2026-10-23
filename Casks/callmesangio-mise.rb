cask "callmesangio-mise" do
  arch arm: "arm64", intel: "x64"

  version "2026.10.18"
  sha256 arm:   "02d764f25a03eeec85979409f1b1b5d9fb724acd7903c896ef4c4b9a1b802967",
         intel: "62c9d1c4e7e2757f04b0e4f684953ffe8f2f337d06887c541abdaacf507871f8"

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
