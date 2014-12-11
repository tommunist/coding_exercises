def has_upper_alpha_at_first_and_last(str)
  str[0] == str[0].capitalize && str[str.length-1] == str[str.length-1].capitalize
end
