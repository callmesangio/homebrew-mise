cask "callmesangio-mise" do
  arch arm: "arm64", intel: "x64"

  version "2026.10.6"
  sha256 arm:   "bbdcf35d9aebfdd7352488d2b040bd4b4581535e8eb919c553d9eccc7c4df30f",
         intel: "d215252b8b8b6ab5a225a0c7b6c433113e3f1ce7c1387c5cd50cb4aa758fec88"

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
