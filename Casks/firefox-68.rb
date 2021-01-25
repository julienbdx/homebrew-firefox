cask 'firefox-68' do
  version '68.12.0esr'
  sha256 'd780a6665d028ec9aff9f338c516e324cccf72a5d87144f79772c9fad0461831'

  url "https://ftp.mozilla.org/pub/firefox/releases/#{version}/mac/fr/Firefox%20#{version}.dmg"
  appcast 'https://www.mozilla.org/fr-FR/firefox/releases/'
  name 'Mozilla Firefox 68.12.0esr'
  homepage 'https://www.mozilla.org/firefox/'

  app 'Firefox.app', :target => 'Firefox-68.app'
end
