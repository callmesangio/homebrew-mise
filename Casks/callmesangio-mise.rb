cask "callmesangio-mise" do
  arch arm: "arm64", intel: "x64"

  version "2026.11.6"
  sha256 arm:   "96e277a687729f81de917465ddfbee263f92ec4d5e181ae5aa98b163194ce07e",
         intel: "eb6eab9ac9021fba9e2ad7c680b76e1a258dcc2d346b72fe84e948c452cd2f12"

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
