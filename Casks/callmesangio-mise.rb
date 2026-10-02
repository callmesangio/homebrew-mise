cask "callmesangio-mise" do
  arch arm: "arm64", intel: "x64"

  version "2026.10.0"
  sha256 arm:   "8d54cca314f6c4c616b4b164735cb745df49238e2eb2685548f8a6edf6c84eeb",
         intel: "1c46db52c3d1ebda8a4a8a7592fab9892711a0e76fc9d9ccfb7dee3483c326ec"

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
