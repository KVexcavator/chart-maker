- bundle init
- sudo systemctl start mongodb
- rackup -p 3000 #blast-off
### create new visitor
- http POST :3000/blah query='mutation{ new_visitor(nik: "Naff", profession: "Pilot"){nik}}'

http POST https://graphqlapi.now.sh query="query { feed { id title } }"
