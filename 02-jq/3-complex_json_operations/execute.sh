jq '[.[] | {titulo: (.emoji + " " + .title), titulo_largo: (if .title | length > 50 then "si" else "no" end)} | select(.titulo | length > 40)] | sort_by(.titulo_largo) | reverse' "$PWD/_input.json"
