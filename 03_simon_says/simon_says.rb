def echo *args
	return "#{args.join(" ")}"
end

def shout *args
	return "#{args.join(" ").upcase}"
end

def repeat string, x=2
	return (string.split() * x).join(" ")
end

def start_of_word string, x
	return string.slice(0, x)
end

def first_word string
	string = string.split(" ")
	return string[0]
end

def titleize title
	title = title.split(" ")

	title.map! do |e|
		if title.index(e) == 0
			e.capitalize
		elsif e != "the" && e != "over" && e != "and"
			e.capitalize
		else 
			e.downcase
		end
	end

	return title.join(" ")
end