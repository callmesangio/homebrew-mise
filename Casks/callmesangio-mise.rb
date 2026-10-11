cask "callmesangio-mise" do
  arch arm: "arm64", intel: "x64"

  version "2026.10.8"
  sha256 arm:   "f82a767a8cd7a3cb02868fb32d1985d8a7d14382357cb777f9190c962a0d8809",
         intel: "02ba828c1658504e9cae41c9910059ad8ea254a69ecdf3f9707828f4c6d0dbfb"

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
