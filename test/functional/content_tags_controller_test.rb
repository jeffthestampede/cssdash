require 'test_helper'

class ContentTagsControllerTest < ActionController::TestCase
  setup do
    @content_tag = content_tags(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:content_tags)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create content_tag" do
    assert_difference('ContentTag.count') do
      post :create, content_tag: { content_id: @content_tag.content_id, name: @content_tag.name }
    end

    assert_redirected_to content_tag_path(assigns(:content_tag))
  end

  test "should show content_tag" do
    get :show, id: @content_tag
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @content_tag
    assert_response :success
  end

  test "should update content_tag" do
    put :update, id: @content_tag, content_tag: { content_id: @content_tag.content_id, name: @content_tag.name }
    assert_redirected_to content_tag_path(assigns(:content_tag))
  end

  test "should destroy content_tag" do
    assert_difference('ContentTag.count', -1) do
      delete :destroy, id: @content_tag
    end

    assert_redirected_to content_tags_path
  end
end
