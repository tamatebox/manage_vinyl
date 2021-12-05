require "test_helper"

class VinylsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vinyl = vinyls(:one)
  end

  test "should get index" do
    get vinyls_url
    assert_response :success
  end

  test "should get new" do
    get new_vinyl_url
    assert_response :success
  end

  test "should create vinyl" do
    assert_difference('Vinyl.count') do
      post vinyls_url, params: { vinyl: { size: @vinyl.size, album: @vinyl.album, artist: @vinyl.artist, alphabet_artist: @vinyl.alphabet_artist, genre: @vinyl.genre, country: @vinyl.country, year: @vinyl.year compilation, @vinyl.compilation, star: @vinyl.star, review: @vinyl.review} }
    end

    assert_redirected_to vinyl_url(Vinyl.last)
  end

  test "should show vinyl" do
    get vinyl_url(@vinyl)
    assert_response :success
  end

  test "should get edit" do
    get edit_vinyl_url(@vinyl)
    assert_response :success
  end

  test "should update vinyl" do
    patch vinyl_url(@vinyl), params: { vinyl: { size: @vinyl.size, album: @vinyl.album, artist: @vinyl.artist, alphabet_artist: @vinyl.alphabet_artist, genre: @vinyl.genre, country: @vinyl.country, year: @vinyl.year compilation, @vinyl.compilation, star: @vinyl.star, review: @vinyl.review} }
    assert_redirected_to vinyl_url(@vinyl)
  end

  test "should destroy vinyl" do
    assert_difference('Vinyl.count', -1) do
      delete vinyl_url(@vinyl)
    end

    assert_redirected_to vinyls_url
  end
end
