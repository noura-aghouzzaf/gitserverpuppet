node default {
  notify {'Hello from Puppet Server!':}
}

node agent-muppet {
    class {muppet:
       puppet_name => "noura"
    }
}
node toto{
	package { 'python3':
            ensure => installed,
        }
        package { 'python3-pip':
            ensure => installed,
        }

        package { 'pygame':
            ensure => installed,
            provider => pip3
        }

}
