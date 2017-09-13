class PledgesController < ApplicationController
  before_action :set_pledges
  before_action :set_pledge, only: [:show, :edit, :update, :destroy]

  # GET campaigns/1/pledges
  def index
    @pledges = @campaign.pledges
  end

  # GET campaigns/1/pledges/1
  def show
  end

  # GET campaigns/1/pledges/new
  def new
    @pledge = @campaign.pledges.build
  end

  # GET campaigns/1/pledges/1/edit
  def edit
  end

  # POST campaigns/1/pledges
  def create
    @pledge = @campaign.pledges.build(pledge_params)

    if @pledge.save
      redirect_to([@pledge.campaign, @pledge], notice: 'Pledge was successfully created.')
    else
      render action: 'new'
    end
  end

  # PUT campaigns/1/pledges/1
  def update
    if @pledge.update_attributes(pledge_params)
      redirect_to([@pledge.campaign, @pledge], notice: 'Pledge was successfully updated.')
    else
      render action: 'edit'
    end
  end

  # DELETE campaigns/1/pledges/1
  def destroy
    @pledge.destroy

    redirect_to campaign_pledges_url(@campaign)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pledges
      @campaign = Campaign.find(params[:campaign_id])
    end

    def set_pledge
      @pledge = @campaign.pledges.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def pledge_params
      params.require(:pledge).permit(:amount, :name, :anonymous)
    end
end
