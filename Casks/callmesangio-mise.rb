cask "callmesangio-mise" do
  arch arm: "arm64", intel: "x64"

  version "2026.10.5"
  sha256 arm:   "f7d6b910c3df5a314cd5e9bcd9ced0f2e56fffd7e38203ca31489065fc62bf20",
         intel: "cfa906f65bc10a0cad8efaf0bb3ec8ec29a1f69f0c3a7a5ef5274035ad576058"

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
