cask "callmesangio-mise" do
  arch arm: "arm64", intel: "x64"

  version "2026.10.10"
  sha256 arm:   "76ac15e8a22f876af0ba277510f12960211242a13c4ce0e1469813e8490ec4e6",
         intel: "be68c2474e987eb969000c4f7ffc209d5b762dda4bf47c91a11efd0f44ba9014"

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
