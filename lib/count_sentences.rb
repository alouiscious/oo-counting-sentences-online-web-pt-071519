require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")

  end

  def count_sentences
    spliters = [".", "?", "!"]
    sentences = []
    
    
    spliters.each do |spliter|
      if self.end_with?(".", "?", "!", "!!", "...")
        self.squeeze(spliter)
        sentences << self.split(spliter)
        # sentences << self.split("?")
        # sentences << self.split("!")
      end
    end
# binding.pry   
    sentences 
    sentences.count
    
    
  end

end