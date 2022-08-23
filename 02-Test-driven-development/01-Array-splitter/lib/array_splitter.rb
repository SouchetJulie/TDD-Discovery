# TO DO: Write a method that splits an array into 2 different ones.
def array_split(initial_array, index)
  raise "Invalid index" if index.negative? || index > initial_array.length

  array_first = []
  array_second = []

#  array_first = initial_array.select.with_index do {|element, i| i < index}
#  array_second = initial_array.select.with_index do {|element, i| index >= i}
    
    
# c'est commplètement illisible mdr
  (0..initial_array.length - 1).each do |i|
    if i < index
      array_first = array_first + [initial_array[i]]
    else
      array_second = array_second + [initial_array[i]]
    end
  end

  return [array_first, array_second]
end

# ça va tu t'amuses ? c:
# Miaou
# Faut bien s'occuper mdr
# Évidemment
# Tu l'as dl tout fait j'espere sinon t'as vraiment du temps mdr
# Puis j'ai pas le talent
# Un peu d'assiduité (inch ça s'écrit comme ça) et tout est possible c: (faux)

#            __..--''``---....___   _..._    __
#  /// //_.-'    .-/";  `        ``<._  ``.''_ `. / // /
# ///_.-' _..--.'_    \                    `( ) ) // //
# / (_..-' // (< _     ;_..__               ; `' / ///
#  / // // //  `-._,_)' // / ``--...____..-' /// / //

# ça c'est du gros dev c:
# J'arrive pas à voir ce que c'est censé être
# Mais c'est l'inspecteur gadget :c
#                 ___
#          _..--"\  `|`""--.._
#       .-'       \  |        `'-.
#      /           \_|___...----'`\
#     |__,,..--""``(_)--..__      |
#     '\     _.--'`.I._     ''--..'
#       `''"`,#JGS/_|_\###,---'`
#         ,#'  _.:`___`:-._ '#,
#        #'  ,~'-;(oIo);-'~, '#
#        #   `~-(  |    )=~`  #
#        #       | |_  |      #
#        #       ; ._. ;      #
#        #  _..-;|\ - /|;-._  #
#        #-'   /_ \\_// _\  '-#
#      /`#    ; /__\-'__\;    #`\
#     ;  #\.--|  |O  O   |'-./#  ;
#     |__#/   \ _;O__O___/   \#__|
#      | #\    [I_[_]__I]    /# |
#      \_(#   /  |O  O   \   #)_/
#            /   |        \
#           /    |         \
#          /    /\          \
#         /     | `\         ;
#        ;      \   '.       |
#         \-._.__\     \_..-'/
#          '.\  \-.._.-/  /'`
#             \_.\    /._/
#              \_.;  ;._/
#            .-'-./  \.-'-.
#           (___.'    '.___)
