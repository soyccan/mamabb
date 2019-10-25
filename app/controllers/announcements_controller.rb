class AnnouncementsController < ApplicationController
    def index
        @announcements = Announcement.all
    end
    
    def new
        @announcement = Announcement.new
    end

    def create
        @announcement = Announcement.new(announcement_params)
        if @announcement.save
            redirect_to announcements_url
        else
            render :action => :new
        end
    end

    def show
        @announcement = Announcement.find(params[:id])
        @page_title = @announcement.poster
    end

    def edit
        @announcement = Announcement.find(params[:id])
    end

    def update
        @announcement  = Announcement.find(params[:id])

        if @announcement.update(announcement_params)
            redirect_to announcement_url(@announcement)
        else 
            render :action => :edit
        end
    end

    def destroy
        @announcement = Announcement.find(params[:id])
        @announcement.destroy

        redirect_to announcements_url
    end

    def login
        user = User.where(:username => params[:username], 
                          :password => params[:password],
                          :is_admin => 1).first
        if user
            session[:is_admin] = true
        end

        redirect_to announcements_url
    end

    def logout
        session[:is_admin] = false
        redirect_to announcements_url
    end


    private
    def announcement_params
        params.require(:announcement).permit(:title, :contents, :poster)
    end
end
