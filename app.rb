def caesar_cipher(string, mod)
  # splitting strings into letters...
  letters = string.split("")

  # ... and change them for a number of times specified by a user
  mod.times do
    letters.each do |l|
      if /[A-Za-z]/.match(l)
        l.next!

        # 'z'.next! returns 'aa' (ruby v2.3), so we check if the length is more than 1 char...
        if l.length > 1
          # ... and trim it
          l.slice!(1)
        end
      end
    end
  end

  letters.join
end

# calling cearar_cipher to check how it works

caesar_cipher("What a string!", 5)
