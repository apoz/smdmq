# Load the rails application
require File.expand_path('../application', __FILE__)

#Date Default Format
my_date_formats = { :default => '%d/%m/%Y' } 
Time::DATE_FORMATS.merge!(my_date_formats) 


# Initialize the rails application
Smdmq::Application.initialize!
