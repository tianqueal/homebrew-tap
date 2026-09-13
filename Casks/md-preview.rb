cask "md-preview" do
  version "0.1.0"
  sha256 "15e461e52fa817ca2231168636d5bef4f3647dc9a4d127ed10e737962246baf1"

  url "https://github.com/tianqueal/md-preview/releases/download/v#{version}/md-preview.zip"
  name "md-preview"
  desc "Markdown and LaTeX previewer"
  homepage "https://github.com/tianqueal/md-preview"

  depends_on macos: :sonoma

  app "md-preview.app"
  binary "#{appdir}/md-preview.app/Contents/SharedSupport/bin/md-preview"
  manpage "#{appdir}/md-preview.app/Contents/Resources/md-preview.1"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-cr", "{{appdir}}/md-preview.app"]
  end

  zap trash: [
    "~/Library/Application Scripts/com.tianqueal.md-preview",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.tianqueal.md-preview.sfl*",
    "~/Library/Containers/com.tianqueal.md-preview",
    "~/Library/Saved Application State/com.tianqueal.md-preview.savedState",
  ]
end
