set -e
cp "diploma.tex" img/* res/* tmp
cd tmp
xelatex --halt-on-error diploma.tex
xelatex --halt-on-error diploma.tex
cd ..
mv tmp/diploma.pdf .
killall okular || true
xdg-open diploma.pdf
