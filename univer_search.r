if (.Platform$OS.type == 'unix') {
  system('find / -name "S3_RW_functions.R" > "fpath.txt"')
} else if (.Platform$OS.type == 'windows'){
  shell('dir /S/b "\\S3_RW_functions.R" > fpath.txt')
}
 
source(readLines('fpath.txt'))
file.remove('fpath.txt')


if (.Platform$OS.type == 'unix') {
  system('find / -name "CVSM_Modeling_Automation.R" > "fpath.txt"')
} else if (.Platform$OS.type == 'windows'){
  shell('dir /S/b "\\CVSM_Modeling_Automation.R" > fpath.txt')
}

tmp_f <- tools::file_path_as_absolute('fpath.txt')
setwd(dirname(readLines(tmp_f)))
file.remove(tmp_f)
