#!/bin/sh
if [ -x /usr/bin/git ]
then
  if [ -f .git/config ]
  then
    git config --unset user.name
    git config --unset user.email
  fi
  echo "Git Student init script"
  echo
  echo -n "Full Name: "
  read NAME
  echo -n "Email address: "
  read EMAIL
  git config --global user.name "$NAME"
  git config --global user.email "$EMAIL"
  echo "Config initialized:"
  echo -n "\t"
  git config --global user.name
  echo -n "\t"
  git config --global user.email
else
  echo "/usr/bin/git not found. Please install git first"
fi
