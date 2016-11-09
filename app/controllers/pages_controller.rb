class PagesController < ApplicationController
  def fortune_method
    @answer = []
    @number = rand(150)
    if @number < 50
      @answer << "You will become a great and powerful wizard one day."
    elsif @number > 49 and @number < 101
      @answer << "You will become a world famous hacker one day."
    elsif @number > 100
      @answer << "You will become a mildy successful talk show host one day."
    elsif @number == '' 
      @answer << "Your entry must be a number. Try again."
    end
    render 'fortune.html.erb'
  end
end
