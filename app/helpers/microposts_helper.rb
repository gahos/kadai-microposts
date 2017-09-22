module MicropostsHelper

  def current_user_micropost?(micropost)
    current_user==micropost.user
  end

  def favorited?(micropost)
    !!current_user.favorites.find_by(micropost_id: micropost.id)
  end

end
