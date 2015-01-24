require 'test_helper'

class StoryChoicesControllerTest < ActionController::TestCase
  setup do
    @story_choice = story_choices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:story_choices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create story_choice" do
    assert_difference('StoryChoice.count') do
      post :create, story_choice: { storyIndex: @story_choice.storyIndex, text: @story_choice.text, weight: @story_choice.weight }
    end

    assert_redirected_to story_choice_path(assigns(:story_choice))
  end

  test "should show story_choice" do
    get :show, id: @story_choice
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @story_choice
    assert_response :success
  end

  test "should update story_choice" do
    patch :update, id: @story_choice, story_choice: { storyIndex: @story_choice.storyIndex, text: @story_choice.text, weight: @story_choice.weight }
    assert_redirected_to story_choice_path(assigns(:story_choice))
  end

  test "should destroy story_choice" do
    assert_difference('StoryChoice.count', -1) do
      delete :destroy, id: @story_choice
    end

    assert_redirected_to story_choices_path
  end
end
