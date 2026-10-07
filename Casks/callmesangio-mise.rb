cask "callmesangio-mise" do
  arch arm: "arm64", intel: "x64"

  version "2026.10.4"
  sha256 arm:   "3e8eaf02f9da098427f26db23f4023b05254a296d9660d33b7e5310007058ddc",
         intel: "43461bceaebdb8f5939cb7cbfa656a0ba5a5f6f57122da83d1cdf230a6a86cb8"

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
