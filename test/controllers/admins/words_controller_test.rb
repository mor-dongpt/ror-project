require "test_helper"

class Admins::WordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admins_word = admins_words(:one)
  end

  test "should get index" do
    get admins_words_url
    assert_response :success
  end

  test "should get new" do
    get new_admins_word_url
    assert_response :success
  end

  test "should create admins_word" do
    assert_difference("Admins::Word.count") do
      post admins_words_url, params: { admins_word: {  } }
    end

    assert_redirected_to admins_word_url(Admins::Word.last)
  end

  test "should show admins_word" do
    get admins_word_url(@admins_word)
    assert_response :success
  end

  test "should get edit" do
    get edit_admins_word_url(@admins_word)
    assert_response :success
  end

  test "should update admins_word" do
    patch admins_word_url(@admins_word), params: { admins_word: {  } }
    assert_redirected_to admins_word_url(@admins_word)
  end

  test "should destroy admins_word" do
    assert_difference("Admins::Word.count", -1) do
      delete admins_word_url(@admins_word)
    end

    assert_redirected_to admins_words_url
  end
end
