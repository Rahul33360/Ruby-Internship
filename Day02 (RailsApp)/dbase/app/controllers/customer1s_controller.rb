class Customer1sController < ApplicationController
  before_action :set_customer1, only: %i[ show edit update destroy ]

  # GET /customer1s or /customer1s.json
  def index
    # list_of_customers = [1,2,3]
    # @customer1s = Customer1.blacklisted_customers(list_of_customers)
    @customer1s = Customer1.all
    # @customer1s = Customer1.unique_email
  end

  def blacklisted_customers
    #  list_of_customers = [1,2]  # but not gud practice
    #  @customer1s = Customer1.where(id: list_of_customers) # but not gud practice
    list_of_customers = [1,2,3]
    @customer1s = Customer1.blacklisted_customers(list_of_customers)
  end

  # GET /customer1s/1 or /customer1s/1.json
  def show
  end

  # GET /customer1s/new
  def new
    @customer1 = Customer1.new
  end

  # GET /customer1s/1/edit
  def edit
  end

  # POST /customer1s or /customer1s.json
  def create
    @customer1 = Customer1.new(customer1_params)

    respond_to do |format|
      if @customer1.save
        format.html { redirect_to @customer1, notice: "Customer1 was successfully created." }
        format.json { render :show, status: :created, location: @customer1 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @customer1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customer1s/1 or /customer1s/1.json
  def update
    respond_to do |format|
      if @customer1.update(customer1_params)
        format.html { redirect_to @customer1, notice: "Customer1 was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @customer1 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @customer1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customer1s/1 or /customer1s/1.json
  def destroy
    @customer1.destroy!

    respond_to do |format|
      format.html { redirect_to customer1s_path, notice: "Customer1 was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer1
      @customer1 = Customer1.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def customer1_params
      params.expect(customer1: [ :name, :email ])
    end
end
