cask "callmesangio-mise" do
  arch arm: "arm64", intel: "x64"

  version "2026.11.4"
  sha256 arm:   "2cfab5f896a4aa1afc87b8b700c7299b3156ba161e8f9c86f1056c5baf7dcaad",
         intel: "17f119ee3a0dceb819834653d686617f25b6788959b23ab3bc8a8c2a9aa746a1"

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
