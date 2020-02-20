node default {
  notify {'Hello from Puppet Server!':}
}

node agent-muppet {
    include muppet
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
