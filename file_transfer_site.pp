#.
#├── auth.conf
#├── autosign.conf
#├── environments
#│   └── example_env
#│       ├── manifests
#│       ├── modules
#│       └── README.environment
#├── fileserver.conf
#├── manifests
#│   └── site.pp
#├── modules
#│   └── rpm
#│       └── files
#│           └── ssldump-0.9-0.9.b3.el6.x86_64.rpm
#└── puppet.conf

# The site.pp Example vi /etc/puppet/manifests/site.pp 
# Watch the Live demo @ https://goo.gl/GWX6my

file { "/opt/ssldump-0.9-0.9.b3.el6.x86_64.rpm":
  ensure  => file,
  source  => "puppet:///modules/rpm/ssldump-0.9-0.9.b3.el6.x86_64.rpm",
  backup  => false,

}

