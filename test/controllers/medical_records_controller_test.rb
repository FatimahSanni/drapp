require 'test_helper'

class MedicalRecordsControllerTest < ActionController::TestCase
  setup do
    @medical_record = medical_records(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:medical_records)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create medical_record" do
    assert_difference('MedicalRecord.count') do
      post :create, medical_record: { csme_le: @medical_record.csme_le, csme_re: @medical_record.csme_re, ffa_le: @medical_record.ffa_le, ffa_re: @medical_record.ffa_re, focal_le: @medical_record.focal_le, focal_re: @medical_record.focal_re, fup_3_le: @medical_record.fup_3_le, fup_3_re: @medical_record.fup_3_re, fup_6_le: @medical_record.fup_6_le, fup_6_re: @medical_record.fup_6_re, haem_le: @medical_record.haem_le, haem_re: @medical_record.haem_re, hard_le: @medical_record.hard_le, hard_re: @medical_record.hard_re, hazy_le: @medical_record.hazy_le, hazy_re: @medical_record.hazy_re, injection_le: @medical_record.injection_le, injection_re: @medical_record.injection_re, irma_le: @medical_record.irma_le, irma_re: @medical_record.irma_re, laser_le: @medical_record.laser_le, laser_re: @medical_record.laser_re, me_le: @medical_record.me_le, me_re: @medical_record.me_re, micro_le: @medical_record.micro_le, micro_re: @medical_record.micro_re, mild_le: @medical_record.mild_le, mild_re: @medical_record.mild_re, npdr_re: @medical_record.npdr_re, nvd_le: @medical_record.nvd_le, nvd_le: @medical_record.nvd_le, nvd_re: @medical_record.nvd_re, nve_re: @medical_record.nve_re, oct_le: @medical_record.oct_le, oct_re: @medical_record.oct_re, pdr_le: @medical_record.pdr_le, pdr_re: @medical_record.pdr_re, post_le: @medical_record.post_le, post_re: @medical_record.post_re, prp_le: @medical_record.prp_le, prp_re: @medical_record.prp_re, severe_le: @medical_record.severe_le, severe_re: @medical_record.severe_re, trd_le: @medical_record.trd_le, trd_re: @medical_record.trd_re, vit_le: @medical_record.vit_le, vit_re: @medical_record.vit_re }
    end

    assert_redirected_to medical_record_path(assigns(:medical_record))
  end

  test "should show medical_record" do
    get :show, id: @medical_record
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @medical_record
    assert_response :success
  end

  test "should update medical_record" do
    patch :update, id: @medical_record, medical_record: { csme_le: @medical_record.csme_le, csme_re: @medical_record.csme_re, ffa_le: @medical_record.ffa_le, ffa_re: @medical_record.ffa_re, focal_le: @medical_record.focal_le, focal_re: @medical_record.focal_re, fup_3_le: @medical_record.fup_3_le, fup_3_re: @medical_record.fup_3_re, fup_6_le: @medical_record.fup_6_le, fup_6_re: @medical_record.fup_6_re, haem_le: @medical_record.haem_le, haem_re: @medical_record.haem_re, hard_le: @medical_record.hard_le, hard_re: @medical_record.hard_re, hazy_le: @medical_record.hazy_le, hazy_re: @medical_record.hazy_re, injection_le: @medical_record.injection_le, injection_re: @medical_record.injection_re, irma_le: @medical_record.irma_le, irma_re: @medical_record.irma_re, laser_le: @medical_record.laser_le, laser_re: @medical_record.laser_re, me_le: @medical_record.me_le, me_re: @medical_record.me_re, micro_le: @medical_record.micro_le, micro_re: @medical_record.micro_re, mild_le: @medical_record.mild_le, mild_re: @medical_record.mild_re, npdr_re: @medical_record.npdr_re, nvd_le: @medical_record.nvd_le, nvd_le: @medical_record.nvd_le, nvd_re: @medical_record.nvd_re, nve_re: @medical_record.nve_re, oct_le: @medical_record.oct_le, oct_re: @medical_record.oct_re, pdr_le: @medical_record.pdr_le, pdr_re: @medical_record.pdr_re, post_le: @medical_record.post_le, post_re: @medical_record.post_re, prp_le: @medical_record.prp_le, prp_re: @medical_record.prp_re, severe_le: @medical_record.severe_le, severe_re: @medical_record.severe_re, trd_le: @medical_record.trd_le, trd_re: @medical_record.trd_re, vit_le: @medical_record.vit_le, vit_re: @medical_record.vit_re }
    assert_redirected_to medical_record_path(assigns(:medical_record))
  end

  test "should destroy medical_record" do
    assert_difference('MedicalRecord.count', -1) do
      delete :destroy, id: @medical_record
    end

    assert_redirected_to medical_records_path
  end
end
