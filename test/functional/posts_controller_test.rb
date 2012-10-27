require 'test_helper'

class PostsControllerTest < ActionController::TestCase
  setup do
    @post = posts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:posts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post" do
    assert_difference('Post.count') do
      post :create, post: { autor1: @post.autor1, autor2: @post.autor2, autor3: @post.autor3, autor4: @post.autor4, codigo: @post.codigo, docente_id: @post.docente_id, escuela_id: @post.escuela_id, fecha: @post.fecha, file: @post.file, obra: @post.obra }
    end

    assert_redirected_to post_path(assigns(:post))
  end

  test "should show post" do
    get :show, id: @post
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @post
    assert_response :success
  end

  test "should update post" do
    put :update, id: @post, post: { autor1: @post.autor1, autor2: @post.autor2, autor3: @post.autor3, autor4: @post.autor4, codigo: @post.codigo, docente_id: @post.docente_id, escuela_id: @post.escuela_id, fecha: @post.fecha, file: @post.file, obra: @post.obra }
    assert_redirected_to post_path(assigns(:post))
  end

  test "should destroy post" do
    assert_difference('Post.count', -1) do
      delete :destroy, id: @post
    end

    assert_redirected_to posts_path
  end
end
