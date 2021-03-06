cask 'firefox-45' do
  version '45.9.0esr'
  sha256 'c0d643622ad4f3a0e94ad9f22619903593636a9867ee78d948c22aef085b4d71'

  url "https://ftp.mozilla.org/pub/firefox/releases/#{version}/mac/fr/Firefox%20#{version}.dmg"
  appcast 'https://www.mozilla.org/fr-FR/firefox/releases/'
  name 'Mozilla Firefox 45.9.0esr'
  homepage 'https://www.mozilla.org/firefox/'

  app 'Firefox.app', :target => 'Firefox-45.app'
end
