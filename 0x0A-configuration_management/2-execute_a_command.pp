# execute a command that kills a process called killmenow

exec { 'killmenow':
  command => 'pkill killmenow',
  path    => ['/bin', '/usr/bin'],
  onlyif  => 'pgrep killmenow',
}

