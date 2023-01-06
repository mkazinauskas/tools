while [ true ]
do
	docker kill tools_getbestfree
	docker run --name tools_getbestfree -d --rm --volume="$PWD:/srv/jekyll:Z" --publish 4000:4000 jekyll/jekyll:3 jekyll serve
  read  -n 1 -p "Hit ENTER to reload, ctrl+c - stop:" ignored
  docker kill tools_getbestfree
done
