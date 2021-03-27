read_origin = 
  function(file = NA){
    text = readr::read_file(file)
    text = stringr::str_replace_all(text,"\\n"," ")
    text = stringr::str_replace_all(text,"\\s[A-Za-z]+\\s?","\n")
    data = read.csv(text  = text,header = F,sep = " ")
    return(data)
  }