proc get_element {list index} { 
  if {$index < 0 || $index >= [llength $list]} { 
    return -code error "Index out of range" 
  } 
  return [lindex $list $index] 
} 

# This will work correctly
get_element {a b c} 1 ;#returns b

# This will throw an error because the index is out of range
get_element {a b c} 3 ;# throws an error

#This is an uncommon error: The procedure doesn't handle non-numeric indices correctly.
#It only checks if the index is within the bounds of the list length, but not if it is actually a number.
get_element {a b c} abc ; # throws an error, but not the expected one
