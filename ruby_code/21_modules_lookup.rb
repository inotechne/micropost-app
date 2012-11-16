module M
  def hello
    puts "'Hello' method in module M"
  end
end

class C
    include M

    def hello
    puts "'Hello' method in class C"
  end
end

class D < C
end

obj = D.new
obj.hello
