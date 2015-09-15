class  my_module{
file { "/var/www/config.xml":
    content => template('my_module/config.xml.erb'),
    ensure  => 'present',
    owner   => 'jenkins',
    group   => 'jenkins',
  }
}
