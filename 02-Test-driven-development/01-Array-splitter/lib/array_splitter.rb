# TO DO: Write a method that splits an array into 2 different ones.
def array_split(initial_array, index)
  if index.negative? || index > initial_array.length
    raise 'Invalid index'
  end

  array_first = []
  array_second = []

  for i in 0..initial_array.length - 1
    if i < index
      array_first = array_first + [initial_array[i]]
    else
      array_second = array_second + [initial_array[i]]
    end
  end

  return [array_first, array_second]
end

#            __..--''``---....___   _..._    __
#  /// //_.-'    .-/";  `        ``<._  ``.''_ `. / // /
# ///_.-' _..--.'_    \                    `( ) ) // //
# / (_..-' // (< _     ;_..__               ; `' / ///
#  / // // //  `-._,_)' // / ``--...____..-' /// / //
