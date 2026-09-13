cask "repo-weather" do
  version "0.1.2"
  sha256 "7920a64dfb1b9690e77f519f8234a3a48d9171bcdbfedc702389e41a04cf43fb"

  url "https://github.com/tianqueal/repo-weather/releases/download/v#{version}/RepoWeather.zip"
  name "RepoWeather"
  desc "Menu bar app for GitHub repository metrics"
  homepage "https://github.com/tianqueal/repo-weather"

  depends_on macos: :sonoma

  app "RepoWeather.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-cr", "{{appdir}}/RepoWeather.app"]
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
