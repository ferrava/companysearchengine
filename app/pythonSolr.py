# import urllib
import os 
import glob
import json 
import pysolr  
from bs4 import BeautifulSoup

# Use this in case want to parse and push specific url content 
# url = raw_input('Enter - ') 
# html = urllib.urlopen(url).read()
# TODO: Use correct path
path = './htmlFiles'

for filename in glob.glob(os.path.join(path, '*.html')):
  with open(filename, "r") as f:
      contents = f.read()

  # Use this in case parsing single specific url 
  # soup = BeautifulSoup(html, features="html.parser")

  # Create soup object which represent html of page 
  # html of page can be parsed thanks to soup methods
  soup = BeautifulSoup(contents, features="html.parser")
  # Connect to my solr core TODO: specify correct core name 
  solr = pysolr.Solr('http://localhost:8983/solr/mycore', timeout=30)

  # Finds all the <a></a> tag in soup object representing html file 
  for tag in soup.find_all('a'):
    # if tag does not have attribute 'data-gtm-json'
    # return None and if != None put company in companies 
      if tag.get('data-gtm-json', None) != None:
        if "card-info" in tag.get('class', None):
          if json.loads(tag.get('data-gtm-json', None))['EntryType'] == 'Professional':
          # Create a dictionary
            mydict = {
              # By using the company name as id we avoid duplicates 
              "id":"doc_"+json.loads(tag.get('data-gtm-json', None))['DetailEntryName'],
              "title": json.loads(tag.get('data-gtm-json', None))['DetailEntryName'],
              "url": tag.get('href', None),
              "contentName": json.loads(tag.get('data-gtm-json', None))['LocalCategory'],
              "cityName": json.loads(tag.get('data-gtm-json', None))['DetailEntryCity'],
              "rating": json.loads(tag.get('data-gtm-json', None))['AverageRating'],
              # "content": json.loads(tag.get('data-gtm-json', None)),
            }
            # Add dictionary as document in solr collection
            solr.add([mydict])  