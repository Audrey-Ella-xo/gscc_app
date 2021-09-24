class ProfilesController < ApplicationController
    before_action :find_profile, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_user!

    def index
        # @profiles = Profile.search(params[:search])
        @profiles = Profile.all
    end

    def show
    end

    def new
        @profile = current_user.build_profile
    end

    def create
        @profile = current_user.build_profile(profile_params)
        if @profile.save
          redirect_to profile_path(@profile)
        else
          render 'new'
        end
    end

    def edit
    end

    def update
        if @profile.update(profile_params)
            redirect_to profile_path(@profile)
        else
            render 'edit'
        end
    end

    def destroy
        @profile.destroy
        redirect_to root_path
    end

    private

    def profile_params
        params.require(:profile).permit(:firstname, :middlename, :familyname, :picture, :birhday, :gender, :marriage_status)
    end
    
    def find_profile
        @profile = Profile.find(params[:id])
    end
end
