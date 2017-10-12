class Caesar
  def cipher(string, mod)
    cipher_machine(string.split(""), mod)
  end

  def decipher(string, mod)
    mod = 26 - mod

    cipher_machine(string.split(""), mod)
  end

  def cipher_machine(letters, mod)
    mod.times do
      letters.each do |l|
        if /[A-Za-z]/.match(l)
          l.next!
          # 'z'.next! returns 'aa' (ruby v2.3), so we check if the length is more than 1 char...
          l.slice!(1) if l.length > 1
        end
      end
    end
    letters.join
  end
end
