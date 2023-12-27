ong_string="(name:suraj~3 OR designation:trip was)"
encoded_param=$(echo "$ong_string" | jq -s -R -r @uri)

# Use curl with the encoded string in the query parameter
curl "http://localhost:8981/solr/test/select?q=$encoded_param&spellcheck=true&spellcheck.collate=true"