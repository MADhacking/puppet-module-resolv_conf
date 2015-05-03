# /etc/resolv.conf module for Puppet

## Description
Puppet module for managing the /etc/resolv.conf file.

## Example usage

	class { 'resolv_conf':
	    domain      => 'lan1.internal.hacking.co.uk',
	    nameservers => ['10.0.1.5', '10.0.1.109'],
	  }

### Resulting files

#### /etc/resolv.conf

	# This file is automatically generated by Puppet
	#
	# Any changes made to this file will be lost on the next automated Puppet run!
	
	# The default domain name if none is supplied
	domain lan1.internal.hacking.co.uk
	
	# The list of name servers
	nameserver 10.0.1.5
	nameserver 10.0.1.109
	
	# The list of options
	options timeout:2
	options attempts:3
	options rotate

## Passing options

The default values of `timeout` (2 seconds), `attempts` (one more than the number
of name servers) and `rotate` (true) may be modified or their use disabled by passing
`undef`.  Additional options may be supplied by using the `options` parameter.

	class { 'resolv_conf':
	    domain      => 'lan1.internal.hacking.co.uk',
	    nameservers => ['10.0.1.5', '10.0.1.109'],
	    timeout     => undef,
	    attempts    => undef,
	    rotate      => false,
	    options     => ['single-request', 'single-request-reopen'],
	  }

### Resulting files

#### /etc/resolv.conf

	# This file is automatically generated by Puppet
	#
	# Any changes made to this file will be lost on the next automated Puppet run!
	
	# The default domain name if none is supplied
	domain lan1.internal.hacking.co.uk
	
	# The list of name servers
	nameserver 10.0.1.5
	nameserver 10.0.1.109
	
	# The list of options
	options single-request
	options single-request-reopen
