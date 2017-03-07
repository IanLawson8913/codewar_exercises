# input: array of quotes, name of hero with number replacing character
# output: String with "hero's name: quote"

# Create value pairs of correct sp of hero with quote
# Match hero passed as argument to key of hash
# -- perhaps with first char
# return matched hero and quote as string

quotes = ["WHERE IS SHE?!", 
          "Holy haberdashery, Batman!", 
          "Let's put a smile on that faaaceee!"
]

def get_quote(quotes, hero)
  whos_line_hsh = { "Batman"=>quotes[0], 
                    "Robin"=>quotes[1], 
                    "Joker"=>quotes[2] 
  }
  full_quote = ""
  whos_line_hsh.each do |key, quote|
    if hero[0] == key[0]
      full_quote = "#{key}: #{quote}"
    end
  end
  full_quote
end

get_quote(quotes, "Rob1n") # "Robin: Holy haberdashery, Batman!"
get_quote(quotes, "Batm0n") # "Batman: WHERE IS SHE?!"
get_quote(quotes, "Jok2r") # "Joker: Let's put a smile on that faaaceee!"