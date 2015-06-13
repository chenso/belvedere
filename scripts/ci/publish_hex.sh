cd /$HOME/$CIRCLE_PROJECT_REPONAME/deps/ex_doc
mix do deps.get, deps.compile, compile
mix docs

mix hex.user auth
expect "Username:*"
send -- "$HEX_USERNAME\r"
expect "Password:*"
send -- "$HEX_PASSWORD\r"

mix hex.publish
