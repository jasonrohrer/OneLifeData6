echo "Pushing local changes to server..."

hg addremove overlays sprites/*.txt \
   objects/*.txt animations/*.txt transitions/*.txt

echo ""
echo "Full diff:"
hg diff --stat

echo ""
bash checkInReport.sh

echo ""



echo "Enter commit message."
echo -n "> "

read commitMessage

hg commit -m "$commitMessage"

echo "Pushing changes to server."

hg push


echo
echo -n "Press ENTER to close."

read userIn