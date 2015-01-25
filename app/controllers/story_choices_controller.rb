class StoryChoicesController < ApplicationController
  http_basic_authenticate_with name: "admin", password: "nashgamedev"
  before_action :set_story_choice, only: [:show, :edit, :update, :destroy]

  # GET /story_choices
  # GET /story_choices.json
  def index
    @story_choices = StoryChoice.all
  end

  # GET /story_choices/1
  # GET /story_choices/1.json
  def show
  end

  # GET /story_choices/new
  def new
    @story_choice = StoryChoice.new
  end

  # GET /story_choices/1/edit
  def edit
  end

  # POST /story_choices
  # POST /story_choices.json
  def create
    @story_choice = StoryChoice.new(story_choice_params)

    respond_to do |format|
      if @story_choice.save
        format.html { redirect_to @story_choice, notice: 'Story choice was successfully created.' }
        format.json { render :show, status: :created, location: @story_choice }
      else
        format.html { render :new }
        format.json { render json: @story_choice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /story_choices/1
  # PATCH/PUT /story_choices/1.json
  def update
    respond_to do |format|
      if @story_choice.update(story_choice_params)
        format.html { redirect_to @story_choice, notice: 'Story choice was successfully updated.' }
        format.json { render :show, status: :ok, location: @story_choice }
      else
        format.html { render :edit }
        format.json { render json: @story_choice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /story_choices/1
  # DELETE /story_choices/1.json
  def destroy
    @story_choice.destroy
    respond_to do |format|
      format.html { redirect_to story_choices_url, notice: 'Story choice was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_story_choice
      @story_choice = StoryChoice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def story_choice_params
      params.require(:story_choice).permit(:text, :weight, :storyIndex)
    end
end
