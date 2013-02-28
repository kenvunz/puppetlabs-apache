class apache::mod::dir (
  $dir = 'public_html',
) {
  apache::mod { 'dir': }

  # Template uses no variables
  file { 'dir.conf':
    ensure  => present,
    path    => "${apache::params::mod_dir}/dir.conf",
    content => template('apache/mod/dir.conf.erb'),
  }
}
