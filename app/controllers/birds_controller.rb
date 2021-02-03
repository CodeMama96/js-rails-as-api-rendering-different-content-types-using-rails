class BirdsController < ApplicationController
  def index
    birds = Bird.all
  #   render json: 'Remember that JSON is just object notation converted to string data, so strings also work here'
  #   render json: { message: 'Hashes of data will get converted to JSON' }
  #   render json: ['As','well','as','arrays']
  #   render json: @birds #(collection of birds)
   render json: { birds: birds, messages: ['Hello Birds', 'Goodbye Birds'] }
   #Now that we are directly rendering to JSON in the same action,
   # we no longer need to deal with instance variables and 
   #can instead just use a local variable
  end
end
