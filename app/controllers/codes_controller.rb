class CodesController < ApplicationController
  protect_from_forgery
  before_action :set_code, only: [:show, :edit, :update, :destroy]

  # GET /codes
  # GET /codes.json
  def index
    @codes = Code.all
  end

  # GET /codes/1
  # GET /codes/1.json
  def show
  end

  # GET /codes/new
  def new
    # @code = Code.new
  end

  # GET /codes/1/edit
  def edit
    @code = Code.find(params[:id])
    gon.language = @code.language.code
    gon.code = @code.source
  end

  # POST /codes
  # POST /codes.json
  def create
    @language = Language.find_by(code: params[:language])
    @code = current_user.codes.build(source: params[:source], language_id: @language.id)

    # @code = Code.new(code_params)

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

  # PATCH/PUT /codes/1
  # PATCH/PUT /codes/1.json
  # def update
  #   puts "update";
  #   respond_to do |format|
  #     if @code.update(code_params)
  #       format.html { redirect_to @code, notice: 'Code was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @code }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @code.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  def update_code
    @language = Language.find_by(code: params[:language])
    @code = Code.find(params[:id])
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

  # DELETE /codes/1
  # DELETE /codes/1.json
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
