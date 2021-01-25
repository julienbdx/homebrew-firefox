cask 'firefox-60' do
  version '60.9.0esr'
  sha256 '796f9d2f5be31c7813b6c083d322f10d3103ac75b3167613818267d8e972f416'

  url "https://ftp.mozilla.org/pub/firefox/releases/#{version}/mac/fr/Firefox%20#{version}.dmg"
  appcast 'https://www.mozilla.org/fr-FR/firefox/releases/'
  name 'Mozilla Firefox 60.9.0esr'
  homepage 'https://www.mozilla.org/firefox/'

  app 'Firefox.app', :target => 'Firefox-60.app'
end
