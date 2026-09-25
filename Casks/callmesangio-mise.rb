cask "callmesangio-mise" do
  arch arm: "arm64", intel: "x64"

  version "2026.9.14"
  sha256 arm:   "ba82576874c875edbccc94db22e8c8a3e00029b6f2d186f6c9b76a3cee03a127",
         intel: "d671ff1192c8fade8882743b33446156661b98213e32703b02a383f7a7236785"

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
