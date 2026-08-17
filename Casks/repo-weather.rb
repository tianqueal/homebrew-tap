cask "repo-weather" do
  version "0.1.1"
  sha256 "28fcee167f3a1e5d2862bcbd09d8edd54d820e3894cef3536dc8a76df44ca5da"

  url "https://github.com/tianqueal/repo-weather/releases/download/v#{version}/RepoWeather.zip"
  name "RepoWeather"
  desc "Menu bar app for GitHub repository metrics"
  homepage "https://github.com/tianqueal/repo-weather"

  depends_on macos: :sonoma

  app "RepoWeather.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/RepoWeather.app"]
  end

  zap trash: [
    "~/Library/Application Scripts/com.tianqueal.repo-weather",
    "~/Library/Caches/com.tianqueal.repo-weather",
    "~/Library/Containers/com.tianqueal.repo-weather/Data/Library/Caches/com.tianqueal.repo-weather",
    "~/Library/Containers/com.tianqueal.repo-weather/Data/Library/HTTPStorages/com.tianqueal.repo-weather",
    "~/Library/Containers/com.tianqueal.repo-weather/Data/Library/Preferences/com.tianqueal.repo-weather.plist",
    "~/Library/HTTPStorages/com.tianqueal.repo-weather",
    "~/Library/Preferences/com.tianqueal.repo-weather.plist",
    "~/Library/Saved Application State/com.tianqueal.repo-weather.savedState",
  ]
end
