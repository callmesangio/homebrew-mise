cask "callmesangio-mise" do
  arch arm: "arm64", intel: "x64"

  version "2026.11.1"
  sha256 arm:   "4fd6dabcc9a57050e8f2fd1e53fc6b74e82d8cd85ed1751fd172756888aa98bc",
         intel: "4c86f557c17d237784bd259e6842e2a231d7f550afedca522a69da8a5dca1282"

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
