def translate phrase
	phrase = phrase.split(" ")

	phrase.map! do |e|
		i = 0

		while i < e.length
			if e.match?(/\bqu/i)
				e = e.slice(2..-1) + e.slice(0..1)
			end

			if !e[i].match?(/[aeiou]/i)
				e = e.slice(1..-1) + e.slice(0)
			else
				break
			end
		end
		e + "ay"
	end

	return phrase.join(" ")
end