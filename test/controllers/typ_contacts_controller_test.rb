require 'test_helper'

class TypContactsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @typ_contact = typ_contacts(:one)
  end

  test "should get index" do
    get typ_contacts_url
    assert_response :success
  end

  test "should get new" do
    get new_typ_contact_url
    assert_response :success
  end

  test "should create typ_contact" do
    assert_difference('TypContact.count') do
      post typ_contacts_url, params: { typ_contact: { name: @typ_contact.name } }
    end

    assert_redirected_to typ_contact_url(TypContact.last)
  end

  test "should show typ_contact" do
    get typ_contact_url(@typ_contact)
    assert_response :success
  end

  test "should get edit" do
    get edit_typ_contact_url(@typ_contact)
    assert_response :success
  end

  test "should update typ_contact" do
    patch typ_contact_url(@typ_contact), params: { typ_contact: { name: @typ_contact.name } }
    assert_redirected_to typ_contact_url(@typ_contact)
  end

  test "should destroy typ_contact" do
    assert_difference('TypContact.count', -1) do
      delete typ_contact_url(@typ_contact)
    end

    assert_redirected_to typ_contacts_url
  end
end
