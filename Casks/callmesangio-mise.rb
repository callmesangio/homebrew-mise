cask "callmesangio-mise" do
  arch arm: "arm64", intel: "x64"

  version "2026.10.3"
  sha256 arm:   "5372494c3027260ddf8efa79504c4d968bbe671a58248ec575f57e1472e5d9c2",
         intel: "0f55b62f77f41ade085521830364de3318f1e788c8e32f8055fb57caec133055"

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
