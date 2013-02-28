class apache::mod::mime {
  apache::mod { 'mime': }
  # Template uses no variables
  file { 'mime.conf':
    ensure  => present,
    path    => "${apache::params::mod_dir}/mime.conf",
    content => template('apache/mod/mime.conf.erb'),
  }
}
