class MedicalRecordsController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_patient
  before_action :set_medical_record, only: [:show, :edit, :update, :destroy]

  # GET /medical_records
  # GET /medical_records.json
  def index
    @medical_records = @patient.medical_records.all
  end

  # GET /medical_records/1
  # GET /medical_records/1.json
  def show
    respond_to do |format|
      format.html
      format.pdf do
        pdf = ReportPdf.new(@medical_record)
        send_data pdf.render, filename: "report_#{@medical_record_id}.pdf", type: "application/pdf", disposition: "inline"
      end
    end
  end


  # GET /medical_records/new
  def new
    @medical_record = @patient.medical_records.build
  end

  # GET /medical_records/1/edit
  def edit
  end

  # POST /medical_records
  # POST /medical_records.json
  def create
    @medical_record = @patient.medical_records.build(medical_record_params)

    respond_to do |format|
      if @medical_record.save
        format.html { redirect_to patient_medical_records_path(@patient), notice: 'Medical record was successfully created.' }
        format.json { render :index, status: :created, location: patient_medical_records_path(@patient) }
      else
        format.html { render :new }
        format.json { render json: @medical_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /medical_records/1
  # PATCH/PUT /medical_records/1.json
  def update
    respond_to do |format|
      if @medical_record.update(medical_record_params)
        format.html { redirect_to patient_medical_records_path(@patient), notice: 'Medical record was successfully updated.' }
        format.json { render :index, status: :ok, location: patient_medical_records_path(@patient) }
      else
        format.html { render :edit }
        format.json { render json: @medical_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /medical_records/1
  # DELETE /medical_records/1.json
  def destroy
    @medical_record.destroy
    respond_to do |format|
      format.html { redirect_to patient_medical_records_url, notice: 'Medical record was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  def set_patient
    @patient = Patient.find(params[:patient_id])
  end
    # Use callbacks to share common setup or constraints between actions.
    def set_medical_record
      @medical_record = @patient.medical_records.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def medical_record_params
      params.require(:medical_record).permit(:diag_re, :diag_le, :counsel_id, :cotton_re, :cotton_le, :nve_le, :micro_re, :micro_le, :haem_re, :haem_le, :hard_re, :hard_le, :csme_re, :csme_le, :irma_re, :irma_le, :nvd_re, :nvd_le, :nve_re, :nvd_le, :vit_re, :vit_le, :trd_re, :trd_le, :focal_re, :focal_le, :prp_re, :prp_le, :post_re, :post_le, :hazy_re, :hazy_le, :npdr_re, :mild_re, :mild_le, :severe_re, :severe_le, :pdr_re, :pdr_le, :me_re, :me_le, :oct_re, :oct_le, :ffa_re, :ffa_le, :injection_re, :injection_le, :laser_re, :laser_le, :fup_3_re, :fup_3_le, :fup_6_re, :fup_6_le, ocular_diseases_attributes: [:id, :name, :_destroy], advices_attributes: [:id, :todo, :_destroy])
    end
end
