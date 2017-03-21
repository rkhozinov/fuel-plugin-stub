# This puppet manifest creates example file in /tmp folder.

notice('PLUGIN: fuel_plugin_stub - deploy.pp')

class fuel_plugin_stub {
  file { '/tmp/fuel_plugin_stub_puppet':
      owner   => 'root',
      group   => 'root',
      mode    => '0644',
      content => 'fuel_plugin_stub\n',
  }
}

class {'fuel_plugin_stub': }
