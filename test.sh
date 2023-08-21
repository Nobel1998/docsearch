#!/bin/bash

# Test the root path
echo "Testing root path:"
curl http://localhost:4000/

# Test the search path
echo -e "\nTesting search with term 'base pair':"
curl "http://localhost:4000/search?q=base%20pair"

# Add more tests as needed
echo -e "\nTesting search with term 'what':"
curl "http://localhost:4000/search?q=what"
