#pwd
text_to_spell="$1"
tr A-Z a-z < text_to_spell > lowercase
tr ' |.' '\n' < lowercase > lowercase_text

comm -13 <(sort -u dictionary) <(sort -u lowercase_text) | grep -v -e '^$'


