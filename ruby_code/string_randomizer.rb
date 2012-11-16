module StringRandomizer

   def randomize(len)
      chars  = Array("a".."h") + %w[j k m n] + Array("p".."z")
      chars += Array("2".."9")
      str = ''
      nr_chars = chars.size
      len.times { str << chars[ rand( nr_chars ) ] }
      return str
    end

end
