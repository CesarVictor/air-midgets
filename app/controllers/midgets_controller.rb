class MidgetsController < ApplicationController
  before_action :set_midget, only: [:edit, :update, :show, :destroy]
  before_action :set_index, only: [:index]
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    # @midgets = policy_scope(Midget).order(created_at: :desc)

    @markers = @midgets.geocoded.map do |midget|
      {
        lat: midget.latitude,
        lng: midget.longitude,
        info_window: render_to_string(partial: "info_window", locals: { midget: midget }),
        image_url: helpers.asset_url("https://mon-nain-de-jardin.com/wp-content/uploads/2021/06/cropped-cropped-Nain-logo-sans-bg.png")
      }
    end
  end

  def new
    @midget = Midget.new
    authorize @midget
  end

  def create
    @midget = Midget.new(midget_params)
    @midget.user_id = current_user.id
    authorize @midget
    if @midget.save
      redirect_to midget_path(@midget)
    else
      render 'new'
    end
  end

  def show
    authorize @midget
    @reservation = Reservation.new
    @review = Review.new
  end

  def edit
  end

  def update
    if @midget.update(midget_params)
      redirect_to midget_path(@midget)
    else
      render 'edit'
    end
  end

  def destroy
    authorize @midget

    if @midget.destroy
      redirect_to midgets_path
    else
      redirect_to midget_path(@midget)
    end
  end

  private

  def midget_params
    params.require(:midget).permit(:name, :speciality, :price, :description, :city, :photo)
  end

  def set_midget
    @midget = Midget.find(params[:id])
  end

  def set_index

    if params[:query].present?
      sql_query = "name ILIKE :query OR speciality ILIKE :query OR city ILIKE :query"
      @midgets = policy_scope(Midget).where(sql_query, query: "%#{params[:query]}%")
    else
      @midgets = policy_scope(Midget).order(created_at: :desc)
    end
  end
end
