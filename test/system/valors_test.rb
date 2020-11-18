require "application_system_test_case"

class ValorsTest < ApplicationSystemTestCase
  setup do
    @valor = valors(:one)
  end

  test "visiting the index" do
    visit valors_url
    assert_selector "h1", text: "Valors"
  end

  test "creating a Valor" do
    visit valors_url
    click_on "New Valor"

    fill_in "Valor1", with: @valor.valor1
    click_on "Create Valor"

    assert_text "Valor was successfully created"
    click_on "Back"
  end

  test "updating a Valor" do
    visit valors_url
    click_on "Edit", match: :first

    fill_in "Valor1", with: @valor.valor1
    click_on "Update Valor"

    assert_text "Valor was successfully updated"
    click_on "Back"
  end

  test "destroying a Valor" do
    visit valors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Valor was successfully destroyed"
  end
end
