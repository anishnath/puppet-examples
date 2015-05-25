# Puppet Stage Example
# Live Demo https://goo.gl/iNIYQC
stage { 'first': before => Stage['main'] }
  stage { 'last': require => Stage['main'] }

  class first {
    notify { 'Execute First': }
  }

  class last {
    notify { 'Execute Last': }
  }

  class { 'first':
    stage => 'first',
  }
  class { 'last':
    stage => 'last',
  }

