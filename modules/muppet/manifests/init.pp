class muppet(
 $puppet_name = "noura"
)
{ 
  
  group { "$puppet_name":
     ensure => present,
     before => File["/home/$puppet_name"],
  }

  user {"$puppet_name":
    require => Group["$puppet_name"],
    ensure => present,
    gid => "$puppet_name",
    home => "/home/$puppet_name",
    shell => "/bin/bash",
    before => File["/home/$puppet_name"],
  }

  file {"/home/$puppet_name":
    ensure => directory,
    owner => "$puppet_name",
    group => "$puppet_name",
    before => File["/home/$puppet_name/.profile"],
  }

file { "/home/$puppet_name/.profile":
  ensure => file,
  source => "puppet:///modules/muppet/.profile",
  owner => "$puppet_name",
  group => "$puppet_name",
  }
}
