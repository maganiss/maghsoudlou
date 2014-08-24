class HomeController < ApplicationController
  before_action :authenticate_user! , :except => [:index]
   
  def index   
   @proposal = Proposal.new
   @techreport = Techreport.new
   @progressreport = Progressreport.new
   @confarticle = Confarticle.new
   @journalarticle = Journalarticle.new
   @presentation = Presentation.new
   @thesis = Thesis.new
   @proposals = Proposal.all(:order => 'created_at DESC')
   @techreports = Techreport.all(:order => 'created_at DESC')
   #@emotions = Emotion.all(:order => 'created_at DESC') #current_user.emotions.all  ya Emotion.all(:order => 'created_at DESC')

	@profiles = Profile.all
	@users = User.all
	@users.each_index do |i|
	(@users.length - i - 1).times do |job|
			if @users[job].points < @users[job + 1].points
			@users[job], @users[job + 1] = @users[job + 1], @users[job]
			end
	end

	end


   if user_signed_in?
   	@profile = current_user.profile
		@friendships = current_user.friendships.find(:all)
		@self_notifications = current_user.notifications.find(:all, :order => 'created_at DESC')
   end
     
 	
  end
  
  def welcome

  end
  
end
