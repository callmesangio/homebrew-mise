cask "callmesangio-mise" do
  arch arm: "arm64", intel: "x64"

  version "2026.11.14"
  sha256 arm:   "d7b5df5d8406d7db64fd02ff2ce85fb9e028c1555a2a887584c385970015939f",
         intel: "8b24529b393ef7737bfa397f7d48991fc2cb39ce0a901069b0743b9367ea5110"

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
