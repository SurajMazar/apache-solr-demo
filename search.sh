ong_string="(name:suraj~3 OR designation:suddenly hlted~3)"
encoded_param=$(echo "$ong_string" | jq -s -R -r @uri)

# Use curl with the encoded string in the query parameter
curl --user solr:SolrRocks  "http://localhost:8981/solr/test/select?q=$encoded_param&spellcheck=true&spellcheck.collate=true"