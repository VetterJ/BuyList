class EListsController < ApplicationController
  before_action :set_e_list, only: %i[ show edit update destroy ]

  # GET /e_lists or /e_lists.json
  def index
    @e_lists = EList.all
  end

  # GET /e_lists/1 or /e_lists/1.json
  def show
  end

  # GET /e_lists/new
  def new
    @e_list = EList.new
  end

  # GET /e_lists/1/edit
  def edit
  end

  # POST /e_lists or /e_lists.json
  def create
    @e_list = EList.new(e_list_params)

    respond_to do |format|
      if @e_list.save
        format.html { redirect_to e_list_url(@e_list), notice: "E list was successfully created." }
        format.json { render :show, status: :created, location: @e_list }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @e_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /e_lists/1 or /e_lists/1.json
  def update
    respond_to do |format|
      if @e_list.update(e_list_params)
        format.html { redirect_to e_list_url(@e_list), notice: "E list was successfully updated." }
        format.json { render :show, status: :ok, location: @e_list }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @e_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /e_lists/1 or /e_lists/1.json
  def destroy
    @e_list.destroy

    respond_to do |format|
      format.html { redirect_to e_lists_url, notice: "E list was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_e_list
      @e_list = EList.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def e_list_params
      params.require(:e_list).permit(:Was?, :Menge, :Wo?, :Done)
    end
end
