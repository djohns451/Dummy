git clone https://github.com/djohns451/RoadArchitect
mv RA/* RoadArchitect/
xbuild /p:Configuration=Debug
#mkdir gendarme && cd gendarme
#wget https://github.com/downloads/spouliot/gendarme/gendarme-2.10-bin.zip
#unzip gendarme-2.10-bin.zip && rm gendarme-2.10-bin.zip && cd ..
#gendarme/gendarme.exe --quiet --html report.html RoadArchitect/bin/Debug/RoadArchitect.dll
cd RoadArchitect
gendarme --quiet --html ../report.html bin/Debug/RoadArchitect.dll
git checkout gh-pages
mv ../report.html .
git add report.html
git commit -m "Thing for commit #"$TRAVIS_COMMIT
git push "https://"$GH_TOKEN"@github.com/djohns451/RoadArchitect"
