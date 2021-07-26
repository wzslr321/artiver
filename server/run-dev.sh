#!/bin/sh

sh -c ./bin/users

# Along with creating new microservices,
# simply add another file to be executed
# in the following way:
# sh -c ./bin/users & ./bin/scrapper  