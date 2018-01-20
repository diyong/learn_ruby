class Book
	attr_accessor :title

	def title=(phrase)
		phrase = phrase.split(" ")
		l_case_words = Regexp.union(/^the$/, /^an$/, /^and$/, /^a$/, /^in$/, /^of$/)

		phrase.map! do |e|
			if phrase.index(e) == 0
				e.capitalize
			elsif phrase.index(e) != 0 and !e.match?(l_case_words)
				e.capitalize
			else
				e.downcase
			end
		end

		@title = phrase.join(" ")
	end


end
