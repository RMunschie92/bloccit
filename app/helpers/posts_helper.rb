module PostsHelper
  def user_is_authorized_for_post?(post)
    current_user && (current_user == post.user || current_user.admin? )
  end

  def user_has_posts?(user)
    if user.posts.empty? == false
      return true
    end
  end

  def user_has_comments?(user)
    if user.comments.empty? == false
      return true
    end
  end

  def user_has_favorites?(user)
    if user.favorites.empty? == false
      return true
    else
      return false
    end
  end
end
