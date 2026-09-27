cask "callmesangio-mise" do
  arch arm: "arm64", intel: "x64"

  version "2026.9.15"
  sha256 arm:   "66754cc2241baf22df9ce65e8dbc89cdb7c1f17ddbec653637f3c5dc1aea0ace",
         intel: "cf593b6f65e4693749f8f7681b9e6e4c94d23fabac36881f7629af6675e2bc49"

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
