while IFS= read -r line; do
	code --install-extension $line
done < extensions.txt

