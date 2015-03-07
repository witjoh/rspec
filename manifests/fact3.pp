class rspec::fact3 {

  notify { "fact3":
    message => "fact3 : ${::os['release']['full']}",
  }
}
