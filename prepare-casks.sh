#!/usr/bin/env bash

declare -a versions=( "45.9.0esr" "52.9.0esr" "60.9.0esr" "68.12.0esr" "78.6.1esr"  )
echo "${TMPDIR}"
for version in "${versions[@]}"; do
  outputFile="${TMPDIR}/Firefox-${version}.dmg"
  if ! [ -f $outputFile ]; then
    echo "Downloading ${version} on https://ftp.mozilla.org/pub/firefox/releases/${version}/mac/fr/Firefox%20${version}.dmg"
    curl -o "${TMPDIR}/Firefox-${version}.dmg" "https://ftp.mozilla.org/pub/firefox/releases/${version}/mac/fr/Firefox%20${version}.dmg"
  fi
done

for version in "${versions[@]}"; do
  checksum=$(shasum --algorithm 256 "${TMPDIR}/Firefox-${version}.dmg" | awk '{print $1}' )
  shortVersion=$(echo -n $version | cut -c1-2)
cat <<-END > Casks/firefox-${shortVersion}.rb
cask 'firefox-${shortVersion}' do
  version '${version}'
  sha256 '${checksum}'

  url "https://ftp.mozilla.org/pub/firefox/releases/#{version}/mac/fr/Firefox%20#{version}.dmg"
  appcast 'https://www.mozilla.org/fr-FR/firefox/releases/'
  name 'Mozilla Firefox ${version}'
  homepage 'https://www.mozilla.org/firefox/'

  app 'Firefox.app', :target => 'Firefox-${shortVersion}.app'
end
END

done
