cask "callmesangio-mise" do
  arch arm: "arm64", intel: "x64"

  version "2026.10.2"
  sha256 arm:   "11df20cfebb7f52eb5c6f68c367eadc6cf22aca169566a8f5b2fa92bf1564540",
         intel: "b8b23b39a05f1b36ebb49c5c556d549585f7e4b2d05ba9ff7c09bb026bf0fca7"

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
