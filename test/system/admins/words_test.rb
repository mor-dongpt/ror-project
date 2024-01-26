require "application_system_test_case"

class Admins::WordsTest < ApplicationSystemTestCase
  setup do
    @admins_word = admins_words(:one)
  end

  test "visiting the index" do
    visit admins_words_url
    assert_selector "h1", text: "Words"
  end

  test "should create word" do
    visit admins_words_url
    click_on "New word"

    click_on "Create Word"

    assert_text "Word was successfully created"
    click_on "Back"
  end

  test "should update Word" do
    visit admins_word_url(@admins_word)
    click_on "Edit this word", match: :first

    click_on "Update Word"

    assert_text "Word was successfully updated"
    click_on "Back"
  end

  test "should destroy Word" do
    visit admins_word_url(@admins_word)
    click_on "Destroy this word", match: :first

    assert_text "Word was successfully destroyed"
  end
end
