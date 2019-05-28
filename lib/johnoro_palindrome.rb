require "johnoro_palindrome/version"

module JohnoroPalindrome
  def palindrome?
    if processed_content.empty?
      false
    else
      processed_content == processed_content.reverse
    end
  end

  private
    def processed_content
      self.to_s.scan(/[a-z0-9]/i).join.downcase
    end
end

class String
  include JohnoroPalindrome
end

class Integer
  include JohnoroPalindrome
end
