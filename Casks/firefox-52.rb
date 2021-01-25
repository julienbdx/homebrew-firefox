cask 'firefox-52' do
  version '52.9.0esr'
  sha256 'cedd8b0ad1b3952701fe41be2159085e7c2b2e277d27a63b3fd96fc601766ca2'

  url "https://ftp.mozilla.org/pub/firefox/releases/#{version}/mac/fr/Firefox%20#{version}.dmg"
  appcast 'https://www.mozilla.org/fr-FR/firefox/releases/'
  name 'Mozilla Firefox 52.9.0esr'
  homepage 'https://www.mozilla.org/firefox/'

  app 'Firefox.app', :target => 'Firefox-52.app'
end
