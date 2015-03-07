class rspec::fact1 {

  notify { 'fact1':
    message => "fact1 : ${::osfamily}",
  }
}
