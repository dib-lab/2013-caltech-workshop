
for md in *.md
do
rst=${md/.md/.txt}
echo pandoc -r markdown -t rst $md -o $rst
pandoc -r markdown -t rst $md -o $rst
done

perl -i.bak  -ple 's/{:class="...?"}//g; s/\<\/?div.*?\>//g;' *.md


