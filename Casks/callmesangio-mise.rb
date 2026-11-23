cask "callmesangio-mise" do
  arch arm: "arm64", intel: "x64"

  version "2026.11.13"
  sha256 arm:   "0acfcdd16b1c5364732c5e0ea33178012a4ffbdaad86088baf47b326eb953eb9",
         intel: "6705c3d0f4172f513573d02abc7c240d4d21e249ef6b6f0ecd0819caf0dac1c9"

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
