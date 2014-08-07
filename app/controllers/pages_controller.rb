class PagesController < ApplicationController

def help
	@users = User.all
end


end
