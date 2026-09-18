cask "callmesangio-mise" do
  arch arm: "arm64", intel: "x64"

  version "2026.9.11"
  sha256 arm:   "dfb81fd00fed36eb0ca86936392ac40c5dba73a10e7297af30092bea5ecda845",
         intel: "7be51801a4e27ebe74aa50ff50a5f1f9ec68c857031c2690b3b875458e688d4a"

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
