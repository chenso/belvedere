cd /$HOME/$CIRCLE_PROJECT_REPONAME/deps/ex_doc
mix do deps.get, deps.compile, compile
mix docs
