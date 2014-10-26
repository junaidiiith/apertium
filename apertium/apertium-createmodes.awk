# Parse output from modes2bash.xsl

BEGIN {
  FS="^ *# *"
}

NF==2 && /\.mode$/ {
  filename = $2
  next
}

filename {
  printf $0 "\n"  >> filename
  close(filename)
}
