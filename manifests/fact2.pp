class rspec::fact2 {

  notify { "fact2":
    message => "fact2 (one level array) : ${::os['family']}",
  }
  notify { "os":
    message => $::os,
  }
}
