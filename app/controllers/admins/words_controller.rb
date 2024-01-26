class Admins::WordsController < ApplicationController
  before_action :set_admins_word, only: %i[ show edit update destroy ]

  # GET /admins/words or /admins/words.json
  def index
    @admins_words = Admins::Word.all
  end

  # GET /admins/words/1 or /admins/words/1.json
  def show
  end

  # GET /admins/words/new
  def new
    @admins_word = Admins::Word.new
  end

  # GET /admins/words/1/edit
  def edit
  end

  # POST /admins/words or /admins/words.json
  def create
    @admins_word = Admins::Word.new(admins_word_params)

    respond_to do |format|
      if @admins_word.save
        format.html { redirect_to admins_word_url(@admins_word), notice: "Word was successfully created." }
        format.json { render :show, status: :created, location: @admins_word }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @admins_word.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admins/words/1 or /admins/words/1.json
  def update
    respond_to do |format|
      if @admins_word.update(admins_word_params)
        format.html { redirect_to admins_word_url(@admins_word), notice: "Word was successfully updated." }
        format.json { render :show, status: :ok, location: @admins_word }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @admins_word.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admins/words/1 or /admins/words/1.json
  def destroy
    @admins_word.destroy!

    respond_to do |format|
      format.html { redirect_to admins_words_url, notice: "Word was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admins_word
      @admins_word = Admins::Word.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def admins_word_params
      params.fetch(:admins_word, {})
    end
end
