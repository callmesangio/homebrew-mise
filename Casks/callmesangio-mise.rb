cask "callmesangio-mise" do
  arch arm: "arm64", intel: "x64"

  version "2026.11.12"
  sha256 arm:   "ab5b87f94e5a4d35ff44eb960ce57d476e40babe67b7e0144cc4f292a07e74da",
         intel: "4419ae54373f90343e0322e81e673384be892ecdb663013480483160fafaac56"

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
