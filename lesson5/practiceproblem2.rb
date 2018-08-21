# How would you order this array of hashes based on year of publication of each book- earliest to latest?

books = [
  {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
  {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
  {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
  {title: 'Ulysses', author: 'James Joyce', published: '1922'}
]

# Since all values (publish date) are strings, we know we can compare them.  
# Since all values are the same four-character length, we can simply compare without having to convert them to integers

books.sort_by do |book| 
  book [:published]
end

