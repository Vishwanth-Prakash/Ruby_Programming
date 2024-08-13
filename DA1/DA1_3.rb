class Post
  def initialize(title, content)
    @title = title
    @content = content
    @comments = []
    @views = 0
  end

  def display_post
    @views += 1
    puts "Title: #{@title}"
    puts "Content: #{@content}"
    puts "Views: #{@views}"
    puts "Comments:"
    if(@comments.length == 0)
      puts "No comments yet."
    end
    @comments.each_with_index do |comment, index|
      puts "#{index + 1}. #{comment}"
    end
  end

  def add_comment(comment)
    @comments << comment
    puts "Comment added."
  end

  def view_count
    puts "Total Views: #{@views}"
  end
end

post = Post.new("I'm Vishwa", "Good to see you.")

post.display_post
post.add_comment("Great post!")
post.add_comment("Looking forward to more content.")
post.display_post
post.view_count
