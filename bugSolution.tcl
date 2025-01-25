proc get_element {list index} { 
  if {![string is integer -strict $index]} { 
    return -code error "Index must be an integer" 
  } 
  if {$index < 0 || $index >= [llength $list]} { 
    return -code error "Index out of range" 
  } 
  return [lindex $list $index] 
} 

# This will work correctly
get_element {a b c} 1 ;#returns b

# This will throw an error because the index is out of range
get_element {a b c} 3 ;# throws an error

# This will now correctly throw an error because the index is not an integer
get_element {a b c} abc ; # throws "Index must be an integer" error
