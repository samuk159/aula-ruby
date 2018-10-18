require 'sinatra'
require_relative 'person/person'

class App < Sinatra::Base

    get '/' do
        'My own home'
    end  

    get '/people' do
        Person.all.to_json
    end

    get '/person/:age/is_major' do 
        content_type :json
        age = params[:age].to_i
        person = Person.new('person', age)
        { age: age, is_major: person.is_major? }.to_json
    end
    
end    