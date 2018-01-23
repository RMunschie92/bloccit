class FavoriteMailer < ApplicationMailer
  default from: "rmunsch9632@gmail.com"

  def new_comment(user, post, comment)

    headers["Message-ID"] = "<comments/#{comment.id}@peaceful-sierra-98472.herokuapp.com>"
    headers["In-Reply-To"] = "<post/#{post.id}@peaceful-sierra-98472.herokuapp.com>"
    headers["References"] = "<post/#{post.id}@peaceful-sierra-98472.herokuapp.com>"

    @user = user
    @post = post
    @comment = comment

    mail(to: user.email, subject: "New comment on #{post.title}")
  end

  def new_post(post)
    headers["Message-ID"] = "<posts/#{post.id}@peaceful-sierra-98472.herokuapp.com>"
    headers["In-Reply-To"] = "<post/#{post.id}@peaceful-sierra-98472.herokuapp.com>"
    headers["References"] = "<post/#{post.id}@peaceful-sierra-98472.herokuapp.com>"

    @post = post

    mail(to: post.user.email, subject: "New post and favorite, #{post.title}")
  end
end
