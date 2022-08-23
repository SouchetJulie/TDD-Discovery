def password_generator(length, has_special_characters)
  # TO DO: Write a method that generates a password of the specified length.
  if length > 8
    if has_special_characters
      chars = [*"a".."z", *0..9, *"A".."Z", "@", "?", "!", "#", "$", "€", "%", "&", "/", "+", "-", "*"].shuffle.join
    else chars = [*"a".."z", *0..9, *"A".."Z"].shuffle.join     end
    return chars
  else
    return "Your password must be at least 8 characters long"
  end
end
