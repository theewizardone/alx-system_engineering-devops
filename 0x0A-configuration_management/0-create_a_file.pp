#creates a file in /tmp

 file{/tmp/school:
   content =>'I love puppet'
   mode => '0744'
   owner => 'WWW-data;
   group => 'WWW-data,
}
