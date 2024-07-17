require "application_system_test_case"

class SekolahsTest < ApplicationSystemTestCase
  setup do
    @sekolah = sekolahs(:one)
  end

  test "visiting the index" do
    visit sekolahs_url
    assert_selector "h1", text: "Sekolahs"
  end

  test "should create sekolah" do
    visit sekolahs_url
    click_on "New sekolah"

    fill_in "Alamat", with: @sekolah.alamat
    fill_in "Jurusan", with: @sekolah.jurusan
    fill_in "Title", with: @sekolah.title
    click_on "Create Sekolah"

    assert_text "Sekolah was successfully created"
    click_on "Back"
  end

  test "should update Sekolah" do
    visit sekolah_url(@sekolah)
    click_on "Edit this sekolah", match: :first

    fill_in "Alamat", with: @sekolah.alamat
    fill_in "Jurusan", with: @sekolah.jurusan
    fill_in "Title", with: @sekolah.title
    click_on "Update Sekolah"

    assert_text "Sekolah was successfully updated"
    click_on "Back"
  end

  test "should destroy Sekolah" do
    visit sekolah_url(@sekolah)
    click_on "Destroy this sekolah", match: :first

    assert_text "Sekolah was successfully destroyed"
  end
end
