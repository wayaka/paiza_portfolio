class CodesController < ApplicationController
  protect_from_forgery
  before_action :set_code, only: [:edit, :update_code, :destroy]
  before_action :authenticate_user!, [:index, :create, :update_code, :destroy]

  def index
    @codes = Code.all
  end

  def edit
    gon.language = @code.language.code
    gon.code = @code.source
  end

  def create
    @language = Language.find_by(code: params[:language])
    @code = current_user.codes.build(source: params[:source], language_id: @language.id)

    respond_to do |format|
      if @code.save!
         flash[:notice] = "OK"
        format.html { redirect_to edit_code_path(@code), notice: 'Code was successfully created.' }
        format.json { render :show, status: :created, location: @code }
      else
        flash[:notice] = "NG"
        format.html { render :new }
        format.json { render json: @code.errors, status: :unprocessable_entity }
      end
    end
  end

  def update_code
    @language = Language.find_by(code: params[:language])
    @code.source = params[:source]
    @code.language = @language

    respond_to do |format|
      if @code.save!
        format.html { redirect_to edit_code_path(@code), notice: 'Code was successfully updated.' }
        format.json { render :show, status: :ok, location: @code }
      else
        format.html { render :edit }
        format.json { render json: @code.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @code.destroy
    respond_to do |format|
      format.html { redirect_to codes_url, notice: 'Code was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_code
      @code = Code.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def code_params
      params.fetch(:code, {})
    end
    
end
