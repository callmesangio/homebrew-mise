cask "callmesangio-mise" do
  arch arm: "arm64", intel: "x64"

  version "2026.9.2"
  sha256 arm:   "8ca7fc2ae6c83a90abc08bfee4b9de19adf10935827ef4da8fcadbaafde4fd81",
         intel: "75e21b412fcbe9708f8d2c693e64d6f4a177a7695012662d5875ce898416d198"

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
