flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

flintstones.assoc("Barney")

# Had to look up this method.  
# .assoc searches through the hash comparing the parameter object with keys in the hash.  Returns key-value pair as an array.