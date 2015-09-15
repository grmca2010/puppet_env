Exec { path => [ "/usr/bin", "/bin", "/usr/sbin", "/usr/local/node/node-default/bin" ] }

if $hostname =~ /^(adamantium|artichoke|horseradish|onion|parsley|parsnip|pattypan|puppetdev|unobtainium|wiheller-puppet|wiheller-cec)(\.cisco\.com)?$/ {
    $gitflowbranch = 'develop'
  } elsif $hostname =~ /^(sgundepa-aem)(\.cisco\.com)?$/ {
    $gitflowbranch = 'feature/11531'
  } else {
    $gitflowbranch = 'master'
  }
$DEVOPS_BRANCH=  $gitflowbranch

include my_module
