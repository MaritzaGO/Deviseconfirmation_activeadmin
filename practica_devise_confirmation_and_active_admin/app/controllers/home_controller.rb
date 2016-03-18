class HomeController < ApplicationController
	
	skip_before_action :authenticate_user!, only: [:index, :about]


def index
	#flash[:notice]= "Se guardo usuario"
end


def about
end


def band
	
end

end
