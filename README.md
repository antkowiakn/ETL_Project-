# ETL_Project:  
# OLYMPICS 1950-2014  
For this project we plan on using the data set for historic GDP's from 1950 - 2017, and comparing it to the olympic medals awarded to each country.  
## Questions:  
Does a nations GDP have any correlation to the amount of medals a country recieves in the olympics?  
Is there a drastic difference between the amount of medals awarded in the summer olympics compared to the winter olympics?  
What city has hosted the most olympics?  
What are all of the events that are in the olympics?  
How many medals have each country accumulated over the years?  

## Team Members  
* Nicole Antkowiak  
* Etienne Dembele  
* Jason Lister  
* Mandakini Majumdar  
## Sources:  
For Olympic Medals: Olympic Sport and Medals, 1896-2014 https://www.kaggle.com/the-guardian/olympic-games  
This data set uses 3 CSV files: Dictionary, Summer, Winter.  
For Historical GDPs: Our World in Data 1950 - 2017 https://ourworldindata.org/grapher/real-gdp-per-capita-pwt  
This data set uses 1 CSV file.  
## Proposed Methodolody:  
Load the data into a structured SQL Database, as the datasets are consistent. Considering to create a discovery data layer for the CSV's and a business layer for fact tables for users to query.  
### Relevant Columns from Olympic Dataset:  
* Year  
* Medal  
* Country  
* Winter/Summer Games
### Relevant Columns from Historical GDPs Dataset:  
* Year  
* Country  
* GDP per capita  

