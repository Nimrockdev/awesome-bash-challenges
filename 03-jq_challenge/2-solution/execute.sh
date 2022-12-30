jq '[. |
 group_by(.user.login) |
 map({user: .[0].user.login, total_prs: length, prs_title: map(.created_at + ": " +.title)}) |
 sort_by(.total_prs) |
  reverse |
  .[] |
  select(.total_prs | length > 1)]' "$PWD/_input.json"
