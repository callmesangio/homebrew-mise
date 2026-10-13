cask "callmesangio-mise" do
  arch arm: "arm64", intel: "x64"

  version "2026.10.9"
  sha256 arm:   "970ccdde920c8217384093c11da96acb469b634ae260eadf1c1b3914eea0d7ac",
         intel: "4773fdef758c8d121be63b7c26d31dd61c4a9b8e2ae5efd03b3bb9fe2b81cb8d"

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
