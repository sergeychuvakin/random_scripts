if (.Platform$OS.type == 'unix') {
  system('find / -name "S3_RW_functions.R" > "fpath.txt"')
} else if (.Platform$OS.type == 'windows'){
  shell('dir /S/b "\\S3_RW_functions.R" > fpath.txt')
}
 
source(readLines('fpath.txt'))
file.remove('fpath.txt')
