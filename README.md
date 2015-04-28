# /etc/resolv.conf module for Puppet

## Description
Puppet module for managing the /etc/resolv.conf file.

### Example usage

	class { 'resolv_conf':
	    domain      => 'lan1.internal.hacking.co.uk',
	    nameservers => ['10.0.1.5', '10.0.1.109'],
	    options     => ['timeout:2', 'attempts:1', 'rotate'],
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
	options attempts:1
	options rotate
