class PigLatinizer

    def piglatinize(text)
        @text = text
        @separated = @text.split(/\W+/)
        @separated.map do |e|
            if e.start_with?(/\A[aeiou]/i)
                e + "way"
            elsif e.start_with?(/\A[^aeiou]+/)
                pld = e.slice(e[/\A[^aeiou]+/].split('').count..-1) + e[/\A[^aeiou]+/] + "ay"
            end
        end.join(' ')
    end

end