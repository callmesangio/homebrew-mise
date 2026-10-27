cask "callmesangio-mise" do
  arch arm: "arm64", intel: "x64"

  version "2026.10.21"
  sha256 arm:   "27755813e64f7a064e4e9c7df2332b3499fcb018a8c3ca699ec149df4aa20e8c",
         intel: "ec7eda34bce4a23bccf6104f5f4ab2ab798abd31a0137d28f2fe9ef2b3ead23a"

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
