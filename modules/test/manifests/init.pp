class test {

node "play-web.cloudctl.io" {

file {'/tmp/example_file.txt':
        ensure => file,
        owner => 'root',
        group => 'root',
        mode => '0755',
        content => 'Congratulations!!. You created example puppet file',
      }
}

}
