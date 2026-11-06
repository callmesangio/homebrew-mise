cask "callmesangio-mise" do
  arch arm: "arm64", intel: "x64"

  version "2026.11.3"
  sha256 arm:   "fa49089e8168effd6d612390fc300aea1fd76f2bdd8649d6359650944fe37263",
         intel: "113d5da9ab55f7780e278c7db6843e1ee76fdbd4ec5c18083dfa3731de886cfa"

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
