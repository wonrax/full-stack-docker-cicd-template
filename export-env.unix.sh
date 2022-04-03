#!/bin/sh
# This command export all defined environment variables inside .env
export $(grep -v '^#' .env | xargs -d '\n')
