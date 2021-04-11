module ItemsHelper

    def capitalize_name(name)
        name.split(" ").each { |word| word.capitalize! }.join(" ")
    end

end
