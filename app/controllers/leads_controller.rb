class LeadsController < ApplicationController
  skip_before_action :authenticate_user!
  def create
    @lead = Lead.new(lead_params)
    authorize @lead
    if @lead.save
      flash[:notice] = "Votre email a été ajouté. Nous vous contacterons très prochainement."
      redirect_to root_path
    else
      flash[:alert] = "Nous avons rencontré un problème. Vérifiez votre adresse email et réessayez."
      render 'pages/home'
    end
  end

  private

  def lead_params
    params.require(:lead).permit(:email)
  end
end
