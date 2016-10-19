class TypContactsController < ApplicationController
  before_action :set_typ_contact, only: [:show, :edit, :update, :destroy]

  # GET /typ_contacts
  # GET /typ_contacts.json
  def index
    @typ_contacts = TypContact.all
  end

  # GET /typ_contacts/1
  # GET /typ_contacts/1.json
  def show
  end

  # GET /typ_contacts/new
  def new
    @typ_contact = TypContact.new
  end

  # GET /typ_contacts/1/edit
  def edit
  end

  # POST /typ_contacts
  # POST /typ_contacts.json
  def create
    @typ_contact = TypContact.new(typ_contact_params)

    respond_to do |format|
      if @typ_contact.save
        format.html { redirect_to @typ_contact, notice: 'Typ contact was successfully created.' }
        format.json { render :show, status: :created, location: @typ_contact }
      else
        format.html { render :new }
        format.json { render json: @typ_contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /typ_contacts/1
  # PATCH/PUT /typ_contacts/1.json
  def update
    respond_to do |format|
      if @typ_contact.update(typ_contact_params)
        format.html { redirect_to @typ_contact, notice: 'Typ contact was successfully updated.' }
        format.json { render :show, status: :ok, location: @typ_contact }
      else
        format.html { render :edit }
        format.json { render json: @typ_contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /typ_contacts/1
  # DELETE /typ_contacts/1.json
  def destroy
    @typ_contact.destroy
    respond_to do |format|
      format.html { redirect_to typ_contacts_url, notice: 'Typ contact was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_typ_contact
      @typ_contact = TypContact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def typ_contact_params
      params.require(:typ_contact).permit(:name)
    end
end
