cask "repo-weather" do
  version "0.1.0"
  sha256 "22678eb8cb8b025f11b5e99fdcaa75c592b0df8ec3186bb24b5f0b115693e257"

  url "https://github.com/tianqueal/repo-weather/releases/download/v#{version}/RepoWeather.zip"
  name "RepoWeather"
  desc "macOS Menu Bar app for GitHub repository metrics"
  homepage "https://github.com/tianqueal/repo-weather"

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
