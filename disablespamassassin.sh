#!/bin/bash

echo "informe o user"
read user

uapi --user=$user Email disable_spam_assassin
