def warm_greeting(name, time = Time.now)
  case time.hour
  when 3..11 then period = "morning"
  when 12..17 then period = "afternoon"
  when 18..21 then period = "evening"
  else period = "night"
  end

  return "Good #{period}, #{name}"
end
