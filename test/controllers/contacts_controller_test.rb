require 'test_helper'

class ContactsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contact = contacts(:one)
  end

  test "should get index" do
    get contacts_url
    assert_response :success
  end

  test "should get new" do
    get new_contact_url
    assert_response :success
  end

  test "should create contact" do
    assert_difference('Contact.count') do
      post contacts_url, params: { contact: { address1: @contact.address1, address1: @contact.address1, avatar: @contact.avatar, business_number: @contact.business_number, cell_number: @contact.cell_number, city: @contact.city, company_id: @contact.company_id, country_id: @contact.country_id, email: @contact.email, latitude: @contact.latitude, longitude: @contact.longitude, postal_code: @contact.postal_code, region_id: @contact.region_id, typ_contact_id: @contact.typ_contact_id, user_id: @contact.user_id } }
    end

    assert_redirected_to contact_url(Contact.last)
  end

  test "should show contact" do
    get contact_url(@contact)
    assert_response :success
  end

  test "should get edit" do
    get edit_contact_url(@contact)
    assert_response :success
  end

  test "should update contact" do
    patch contact_url(@contact), params: { contact: { address1: @contact.address1, address1: @contact.address1, avatar: @contact.avatar, business_number: @contact.business_number, cell_number: @contact.cell_number, city: @contact.city, company_id: @contact.company_id, country_id: @contact.country_id, email: @contact.email, latitude: @contact.latitude, longitude: @contact.longitude, postal_code: @contact.postal_code, region_id: @contact.region_id, typ_contact_id: @contact.typ_contact_id, user_id: @contact.user_id } }
    assert_redirected_to contact_url(@contact)
  end

  test "should destroy contact" do
    assert_difference('Contact.count', -1) do
      delete contact_url(@contact)
    end

    assert_redirected_to contacts_url
  end
end
