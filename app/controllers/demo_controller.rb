class DemoController < ApplicationController
	def dick
		render(:template => "demo/index")
	end
	
	def indexes
		render('hello')
	end
	
	def hello
		@exampleArray = [1,2,3]
		@exampleText = 'this is the example text'
		@examplePassed = params[:passedText]
	end
	
	def hello2
		render(:text => 'hello everyone')
	end
end
