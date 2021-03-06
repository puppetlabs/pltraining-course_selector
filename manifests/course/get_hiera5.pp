class course_selector::course::get_hiera5 (
  $unit = '5'
){
  file { "/etc/puppetlabs/code/hieradata":
    ensure  => directory,
    recurse => true,
    source  => "puppet:///modules/course_selector/get_hiera/${unit}/hieradata",
  }
  file { "/etc/puppetlabs/puppet/hiera.yaml":
    ensure => file,
    source => "puppet:///modules/course_selector/get_hiera/${unit}/hiera.yaml",
  }
}
