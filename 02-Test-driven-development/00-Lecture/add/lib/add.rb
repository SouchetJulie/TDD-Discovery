def add(num1, num2)
  int = Integer
  return "You must pass numbers to the #add method" unless num1.instance_of?(int) && num2.instance_of?(int)

  num1 + num2
end
