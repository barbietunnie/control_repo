node default {
}
node 'ip-172-31-37-151.us-east-2.compute.internal' {
  include role::master_server
}
node /^web/ {
  include role::app_server
}
node /^db/ {
  include role::app_server
}
