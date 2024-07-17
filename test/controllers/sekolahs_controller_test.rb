require "test_helper"

class SekolahsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sekolah = sekolahs(:one)
  end

  test "should get index" do
    get sekolahs_url
    assert_response :success
  end

  test "should get new" do
    get new_sekolah_url
    assert_response :success
  end

  test "should create sekolah" do
    assert_difference("Sekolah.count") do
      post sekolahs_url, params: { sekolah: { alamat: @sekolah.alamat, jurusan: @sekolah.jurusan, title: @sekolah.title } }
    end

    assert_redirected_to sekolah_url(Sekolah.last)
  end

  test "should show sekolah" do
    get sekolah_url(@sekolah)
    assert_response :success
  end

  test "should get edit" do
    get edit_sekolah_url(@sekolah)
    assert_response :success
  end

  test "should update sekolah" do
    patch sekolah_url(@sekolah), params: { sekolah: { alamat: @sekolah.alamat, jurusan: @sekolah.jurusan, title: @sekolah.title } }
    assert_redirected_to sekolah_url(@sekolah)
  end

  test "should destroy sekolah" do
    assert_difference("Sekolah.count", -1) do
      delete sekolah_url(@sekolah)
    end

    assert_redirected_to sekolahs_url
  end
end
