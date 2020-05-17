#!/bin/sh

cp /action/problem-matcher.json /github/workflow/problem-matcher.json

echo "::add-matcher::${RUNNER_TEMP}/_github_workflow/problem-matcher.json"

${INPUT_TWIGLINT_BIN_PATH} --report=checkstyle ${INPUT_PATHS}
~/.composer/vendor/friendsoftwig/twigcs/bin/twigcs /test/
status=$?

echo "::remove-matcher owner=phpcs::"

exit $status
