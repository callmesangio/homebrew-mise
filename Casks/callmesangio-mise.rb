cask "callmesangio-mise" do
  arch arm: "arm64", intel: "x64"

  version "2026.10.1"
  sha256 arm:   "58418953b0afb677265bd268450e2666f631a9a816378f44d3f21b8c9b541a9c",
         intel: "8e385f124db118aaa4e0b1cca4583c7e3c90f6409b1488da3e48997b9036b2bc"

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
