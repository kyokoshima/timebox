# == Schema Information
#
# Table name: capsules
#
#  id           :integer          not null, primary key
#  message      :text
#  dig_date     :datetime
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  title        :string
#  mail_address :string
#

class CapsulesController < ApplicationController
  before_action :set_capsule, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # GET /capsules
  # GET /capsules.json
  def index
    @capsules = Capsule.all
  end

  # GET /capsules/1
  # GET /capsules/1.json
  def show
    @picture = Picture.new
  end

  # GET /capsules/new
  def new
    @capsule = Capsule.new
    @capsule.pictures.build
  end

  # GET /capsules/1/edit
  def edit
  end

  # POST /capsules
  # POST /capsules.json
  def create
    @capsule = Capsule.new(capsule_params)
    respond_to do |format|
      if @capsule.save
        format.html { redirect_to @capsule, notice: 'Capsule was successfully created.' }
        format.json { render :show, status: :created, location: @capsule }
      else
        format.html { render :new }
        format.json { render json: @capsule.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /capsules/1
  # PATCH/PUT /capsules/1.json
  def update
    respond_to do |format|
      if @capsule.update(capsule_params[:id])
        format.html { redirect_to @capsule, notice: 'Capsule was successfully updated.' }
        format.json { render :show, status: :ok, location: @capsule }
      else
        format.html { render :edit }
        format.json { render json: @capsule.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /capsules/1
  # DELETE /capsules/1.json
  def destroy
    @capsule.destroy
    respond_to do |format|
      format.html { redirect_to capsules_url, notice: 'Capsule was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def send_mail
    # MessageMailer.hello("aaaa").deliver
   
    redirect_to capsules_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_capsule
      @capsule = Capsule.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def capsule_params
      params.require(:capsule).permit(:title, :mail_address, :message, :dig_date, pictures_attributes: [:id, :image, :_destroy])
    end
end
