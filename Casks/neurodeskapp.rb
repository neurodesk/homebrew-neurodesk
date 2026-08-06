cask "neurodeskapp" do
  arch arm: "arm64", intel: "x64"

  version "2.0.0"
  sha256 arm: "5acaaf0ac4ebb02474739db728780e895aebf6a31171edbd8b0ec018b4354741", intel: "d79f010e56576d6229e5f3328c610cd7a912f3194da5a3c77bf416fa37410fc1"

  url "https://github.com/NeuroDesk/neurodesk-app/releases/download/v#{version}/NeurodeskApp-Setup-macOS-#{arch}.dmg"
  name "NeurodeskApp"
  desc "Desktop application for neuroscience computing"
  homepage "https://neurodesk.org/"

  depends_on macos: ">= :catalina"

  app "NeurodeskApp.app"

  zap trash: [
    "~/Library/Application Support/neurodeskapp",
    "~/Library/Preferences/org.neurodesk.neurodeskapp.plist",
    "~/Library/Saved Application State/org.neurodesk.neurodeskapp.savedState",
  ]
end
