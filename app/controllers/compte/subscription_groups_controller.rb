class Compte::SubscriptionGroupsController < CompteController
  before_action :set_subscription_group, only: %i[ show edit update destroy ]

  # GET /subscription_groups or /subscription_groups.json
  def index
    @subscription_groups = SubscriptionGroup.all
  end

  # GET /subscription_groups/1 or /subscription_groups/1.json
  def show
  end

  # GET /subscription_groups/new
  def new
    @subscription_group = SubscriptionGroup.new
  end

  # GET /subscription_groups/1/edit
  def edit
  end

  # POST /subscription_groups or /subscription_groups.json
  def create
    @subscription_group = SubscriptionGroup.new(subscription_group_params)

    respond_to do |format|
      if @subscription_group.save
        format.html { redirect_to subscription_group_url(@subscription_group), notice: "L’inscription a été créée avec succès." }
        format.json { render :show, status: :created, location: @subscription_group }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @subscription_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subscription_groups/1 or /subscription_groups/1.json
  def update
    respond_to do |format|
      if @subscription_group.update(subscription_group_params)
        format.html { redirect_to subscription_group_url(@subscription_group), notice: "L’inscription a été mise à jour avec succès." }
        format.json { render :show, status: :ok, location: @subscription_group }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @subscription_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subscription_groups/1 or /subscription_groups/1.json
  def destroy
    @subscription_group.destroy!

    respond_to do |format|
      format.html { redirect_to subscription_groups_url, notice: "L’inscription a été supprimée avec succès." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subscription_group
      @subscription_group = subscription_group.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def subscription_group_params
      params.require(:subscription_group).permit(:name, :description)
    end
end

