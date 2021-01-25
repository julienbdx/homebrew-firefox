cask 'firefox-78' do
  version '78.6.1esr'
  sha256 '32106808ec2ee5445ee4bbc7017fe4b97fd17b06c8768a9a0368d585d69e28e5'

  url "https://ftp.mozilla.org/pub/firefox/releases/#{version}/mac/fr/Firefox%20#{version}.dmg"
  appcast 'https://www.mozilla.org/fr-FR/firefox/releases/'
  name 'Mozilla Firefox 78.6.1esr'
  homepage 'https://www.mozilla.org/firefox/'

  app 'Firefox.app', :target => 'Firefox-78.app'
end
