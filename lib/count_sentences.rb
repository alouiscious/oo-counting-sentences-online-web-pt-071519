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
    
    
    # spliters.each do |spliter|
    #   if self.end_with?(".", "?", "!", "!!", "...")
    #     self.squeeze(spliter)
        sentences << self.split(/\b[.|?|!]/)
        # sentences << self.split("?")
        # sentences << self.split("!")
    #   end
    # end
    sentences << self.scan(/\b[.|?|!]/)
# binding.pry   
    sentences 
    sentences.count
    
    
  end

end