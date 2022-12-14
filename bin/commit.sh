#!/bin/sh
TYPE=$(gum choose "๐ fix" "โจ feat" "๐ docs" "๐ style" "โป๏ธ refactor" "๐งช test" "chore" "revert")
# SCOPE=$(gum input --placeholder "scope")
TICKET=$(gum input --placeholder "ticket")

# Since the scope is optional, wrap it in parentheses if it has a value.
# test -n "$SCOPE" && SCOPE="($SCOPE)"
# Since the scope is optional, wrap it in parentheses if it has a value.
test -n "$TICKET" && TICKET="(#$TICKET)"

# Pre-populate the input with the type(scope): so that the user may change it
# SUMMARY=$(gum input --value "$TYPE$SCOPE: " --placeholder "Summary of this change")
SUMMARY=$(gum input --value "$TYPE$TICKET: " --placeholder "Summary of this change")
DESCRIPTION=$(gum write --placeholder "Details of this change (CTRL+D to finish)")

# Commit these changes
gum confirm "Commit changes?" && git commit -m "$SUMMARY" -m "$DESCRIPTION"
