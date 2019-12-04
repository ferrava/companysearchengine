from flask import Blueprint, json, request, render_template, make_response, redirect, url_for
import pysolr

categories= ['Architectural firm', 'Attorneys at law', 'Audit firm', 'Business consultancy', 'Car body work', 'Carpenter', 'Cleaning company', 'Coaching', 'Computing', 'Construction company', 'Cosmetic institute', 'Dental technial laboratory', 'Dentist', 'Electric installations', 'Engineering firms', 'Florist', 'Garage', 'Hairdresser', 'Hearing aids, consultations', 'Heating systems', 'Horticulture and garden maintenance', 'Hotel', 'Household appliances', 'Keys services', 'Law firm', 'Metal and steel construction', 'Movers', 'Notary public', 'Optician', 'Painting', 'Pharmacy', 'Physical therapy', 'Property management', 'Real Estate', 'Restaurant', 'Roofing', 'Sanitary facilities', 'Swimming pool construction and supplies', 'Taxi', 'Vet', 'Wood construction']
# Connect to solr 
solr = pysolr.Solr('http://localhost:8983/solr/mycore', timeout=30)

routes = Blueprint('routes', __name__)

# TODO: Query also with category 
@routes.route('/', methods=['POST', 'GET'])
def index():
  # When pressing Search-btn POST a request 
  if request.method == 'POST':
    companies=[]
    who = request.form.get('who')
    where = request.form.get('where')
    where = where.capitalize()
    category = request.form.get('category')
    if category == 'nocategory':
      if who != '':
        if where != '':
          # Search by company name and city 
          results = solr.search('title:"'+who+'" AND cityName:'+where)
          rows = results.raw_response['response']['numFound']
          results = solr.search('title:"'+who+'" AND cityName:'+where, rows=rows, sort="rating desc")
          if results:
            message="Here are all the companies named "+who+" in "+where
            for r in results:
              companies.append(r)
          else:
            message = "No company named "+who+" in "+where+" was found."
        else:
          # Search by company name
          results = solr.search('title:"'+who+'"')
          rows = results.raw_response['response']['numFound']
          results = solr.search('title:"'+who+'"', rows=rows, sort="rating desc")
          if results:
            message = "Here are all the companies named "+who
            for r in results:
              companies.append(r)
          else: 
            message = "No company named "+ who + " was found."
      else:
        if where != '':
          # Search by city
          results = solr.search('cityName:'+where)
          rows = results.raw_response['response']['numFound']
          results = solr.search('cityName:'+where, rows=rows, sort="rating desc")
          if results:
            message='Here are all the companies in '+where
            for r in results:
              companies.append(r)
          else:
            message = 'No company was found in '+where
        else:
          # No filters 
          results = solr.search('*:*')
          rows = results.raw_response['response']['numFound']
          results = solr.search('*:*', rows=rows, sort="rating desc")
          if results: 
            companies=[]
            message = "Search your company."
            for r in results:
              companies.append(r)
          else: 
            message = "No company was found."
    else:
       # TODO: Add category to each query
      if who != '':
        if where != '':
          # Search by company name and city 
          # title:AG AND cityName:Zug AND contentName:"Audit firm"
          results = solr.search('title:"'+who+'" AND cityName:'+where+' AND contentName:"'+category+'"')
          rows = results.raw_response['response']['numFound']
          results = solr.search('title:"'+who+'" AND cityName:'+where+' AND contentName:"'+category+'"', rows=rows, sort="rating desc")
          if results:
            message="Here are all the "+category+" companies named "+who+" in "+where
            for r in results:
              companies.append(r)
          else:
            message = "No "+category+" company named "+who+" in "+where+" was found."
        else:
          # Search by company name & category
          results = solr.search('title:"'+who+'" AND contentName:"'+category+'"')
          rows = results.raw_response['response']['numFound']
          results = solr.search('title:"'+who+'" AND contentName:"'+category+'"', rows=rows, sort="rating desc")
          if results:
            message = "Here are all the "+category+" companies named "+who
            for r in results:
              companies.append(r)
          else: 
            message = "No "+category+" company named "+ who + " was found."
      else:
        if where != '':
          # Search by city
          results = solr.search('cityName:'+where+' AND contentName:"'+category+'"')
          rows = results.raw_response['response']['numFound']
          results = solr.search('cityName:'+where+' AND contentName:"'+category+'"', rows=rows, sort="rating desc")
          if results:
            message='Here are all the '+category+' companies in '+where
            for r in results:
              companies.append(r)
          else:
            message = 'No '+category+' company was found in '+where
        else:
          # Only category 
          results = solr.search('contentName:"'+category+'"')
          rows = results.raw_response['response']['numFound']
          results = solr.search('contentName:"'+category+'"', rows=rows, sort="rating desc")
          if results: 
            companies=[]
            message = "Here are all the "+category+" companies."
            for r in results:
              companies.append(r)
          else: 
            message = "No "+category+" company was found."
     
      
    resp = make_response(render_template('index.html', response=message, companies=companies, numFound=rows, categories=categories))
    return resp  
  else:
    results = solr.search('*:*')
    # Print the number of results of queries
    rows = results.raw_response['response']['numFound']
    results = solr.search('*:*', rows=rows, sort="rating desc")
    if results: 
      companies=[]
      message = "Search your company."
      for r in results:
        companies.append(r)
    else: 
      message = "No company was found."
    return render_template('index.html', response=message, companies=companies, numFound=rows, categories=categories) 
