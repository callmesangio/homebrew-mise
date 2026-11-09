cask "callmesangio-mise" do
  arch arm: "arm64", intel: "x64"

  version "2026.11.5"
  sha256 arm:   "cdfdf4377a40c242fd3c64e6a706be1b61eb5fd940518edea1c7fbbf9378142b",
         intel: "2ba757f91479a7f0c7b532843985947a459235c5f6379529edaac253fefb2aab"

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
