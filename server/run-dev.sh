#!/bin/sh

sh -c ./bin/users
sh -c ./bin/prometheus

# Along with creating new microservices,
# simply add another file to be executed
# in the following way:
# sh -c ./bin/users & ./bin/scrapper