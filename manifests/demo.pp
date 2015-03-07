class rspec::demo {

  notify { 'normal fact':
    message => "normal fact : ${::osfamily}",
  }

  notify { "array fact":
    message => "structured fact : ${::os['family']}",
  }

  notify { "nested fact":
    message => "nested fact : ${::os['release']['full']}",
  }
}
