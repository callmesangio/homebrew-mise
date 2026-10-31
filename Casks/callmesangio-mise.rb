cask "callmesangio-mise" do
  arch arm: "arm64", intel: "x64"

  version "2026.10.25"
  sha256 arm:   "8a895b4b4161d56f5df7d7d3d9098bc0b1d1e28de400912d0ea49eafe8d59a87",
         intel: "c457464e40a26f81b3b0c1a82b509b51f2306c5794d7ebbadfba57619bb8a949"

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
