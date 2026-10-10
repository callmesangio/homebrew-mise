cask "callmesangio-mise" do
  arch arm: "arm64", intel: "x64"

  version "2026.10.7"
  sha256 arm:   "eca91c7d79873c06fe5fa08562b3ff34a526dd3f94b945391a61db6b5481b335",
         intel: "8e253e5fd02a36141bcbde33f27326cc22fd7e606b6f1cd663ebefd4df943c56"

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
