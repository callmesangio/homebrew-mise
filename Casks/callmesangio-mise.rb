cask "callmesangio-mise" do
  arch arm: "arm64", intel: "x64"

  version "2026.10.22"
  sha256 arm:   "d274eea4e08892137fd8e14c25593461ca2c89d7036fcafa0b2536ffb9902e1a",
         intel: "a4b3990b3c79855470ed41ecc0227883af30bca9ab77f594df11e5fde9d7e853"

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
