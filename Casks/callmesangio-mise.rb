cask "callmesangio-mise" do
  arch arm: "arm64", intel: "x64"

  version "2026.11.7"
  sha256 arm:   "b8f0d460fba603e04c0bfd4332ec334989978b560a5899de1bc614c4715054cb",
         intel: "117e6d38831b5bdae5f1430b060fd7b95023973a4395b85e9d32218f57233104"

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
