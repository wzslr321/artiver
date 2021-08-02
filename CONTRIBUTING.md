<h2 align="center"> Contributing to ArTiver </h2>

We really appreciate your help to develop this project! 
Every kind of help is welcome and we want to make contributing as easy as it is possible.

---

Check <b> Table of Contents </b> below to see how to make a particular impact on a project.
All of things pointed out below are descriped in the same order on the bottom of this file.
* Reporting an issue
* Discussing the current state of the code
* Submitting a fix
* Translations   
* Proposing new features
* Becoming a maintainer

<br>

<h2 align="center"> Code of Conduct </h2>

The code of conduct is described in <a href="https://github.com/wzslr321/artiver/blob/main/CODE_OF_CONDUCT.md"> CODE_OF_CONDUCT.md </a>

<br> 
                                       
<h2 align="center"> Development Process </h2> 

All changes happen through <i> pull requests </i>. Every pull request is welcome and we invite you to submit your PR directly <a href="https://github.com/wzslr321/artiver/pulls"> here</a>. 
All of pull requests are going to be reviewed and if it goes sucessfully, these can be merged into the project.

<br>

#### Before implementing your own thing of choice, check out our <a href="https://github.com/wzslr321/artiver/projects/1"> TodoList </a> to see if there is something that suits you! 

<br> 

<h2 align="center"> Quickstart Local Frontend Development </h2>

Do this if you only want to do Flutter related stuff.

* Navigate to the `/app`
* Run `flutter pub get`
* Run `flutter run`
  
* Install Docker and docker-compose.

With docker-compose properly configured, you just have to run `docker compose -f docker-compose-dev.yaml up` in the root directory of this project.

Flutter docker image is incompatible with Mac's with M1. To run docker configuration that excludes it, run `docker compose -f docker-compose-dev-m1.yaml up`

It starts also API and dart docs, respectively on ports 8080 and 8081.

<i> Now you are ready to start coding! </i>

<b> Please</b>, if you add new feature - follow the DDD - Domain Driven Design. If your change adds/changes the functionality, please write a tests. In case you
don't feel comfortable enough with that, consider asking for help on our Discord or point it out in your Pull Request.

> If you are not sure what is the best way to implement particular thing, consult @wzslr321 or ask on our
<a href="https://discord.gg/cdSAMKuKwH"> Discord</a>. <b> Please, never feel shy to ask for help! </b>

<br>

<h2 align="center"> Quickstart Local Backend Development </h2>

* Install Docker and docker-compose.

With docker-compose properly configured, you just have to run `docker compose -f docker-compose-dev.yaml up` in the root directory of this project.

It starts also API and godocs, respectively on ports 8080 and 8090. 

Before working on API, make sure to checkout best REST API practises, <a href="https://stackoverflow.blog/2020/03/02/best-practices-for-rest-api-design/"> here </a>

<br>

<h2 align="center"> Pull Requests </h2>

1. Fork the repo and create your own branch, name it according to what it is going to contain. 
2. If you have added the code that should be tested, add some test examples or point it out in PR that those are needed. Also consider asking for help on 
<a href="https://discord.gg/CSkuazRqKG"> Discord</a>, to have a satisfaction of creating a whole PR by yourself!
3. Ensure to describe your pull request.

> Pull requests trigger checks, that analyze the code. 

Back-end checks: 
*  Run golangci-lint
*  go build -v ./...
*  go test -v ./...

Front-end checks: 
* flutter format --set-exit-if-changed lib
* flutter analyze lib
* flutter test --no-pub --coverage --test-randomize-ordering-seed random

Every pull request have to successfully pass all checks before getting merged. 

---

<br>

<h2 align="center"> Reporting an issue </h2> 

You can report the issure directly <a href="https://github.com/wzslr321/ativer/issues/new"> here</a>.

Title of your issue should contain: `issue(<what is issue related to, e.g. front-end>): Descriptive phrase about the issue`

<i> Issue title example: </i> `issue(state-management): Network connection stream doesn't yield initial value to the state.`

Description should contain as much information as it is possible. Please write also steps to reproduce the issue, so others can easily see the problem locally on their machines.

<br> 

<h2 align="center"> Discussing the current state of the code </h2>

Every code improvement is extremely welcome and we are always happy to discuss about better solutions. If you think that some code can be written in a better way, 
let's talk about it on our [#current-code-discussions](https://discord.gg/CSkuazRqKG) channel on Discord. In case you just are curious about any part of code, don't know
why is it done this way, please also ask about it there!

<br> 

<h2 align="center"> Submitting a fix </h2> 

Before submitting a fix, please make sure it has its own issue. If you fixed an issue created by someone else, just simply use its #id in your pull request title.
Otherwise, before making a pull request, report an issue and describe it there. 

Example of fix's PR title: `fix(#63): implement a method to yield initial value to the state.`

<br>

<h2 align="center"> Translations </h2>

You can help to translate the project, even if you don't have any programming knowledge. 
All texts used in this project are in `.arb` files located in `/app/lib/l10n/arb`.
To fill a translation gaps in already existing translation file, just edit it.
For example: If you want to add spanish translation, edit the `app_es.arb` file.
If you want to create a translation in new language, simply create a new file in `arb` directory,
with following name: `app_<country_shortcut>.arb`.

English is a primary language of this project, thus all texts that need translation, are 
located in `app_en.arb` file. 

<b> Translation example: </b>

```bash
/// app_en.arb
{
    "helloWorld": "Hello World!",
    "@helloWorld": {
      "description": "The conventional newborn programmer greeting"
    }
}

/// app_pl.arb
{
    "helloWorld": "Witaj świecie!"
}
```

<h2 align="center"> Proposing a new features </h2>

You can propose a new feature on our discord channel [#features-proposals](https://discord.gg/NqsCHwFFnQ) or create an issue, containing `(feature):` on the beggining of 
its title. Make sure to be as descriptive as you can! 

<br> 

<h2 align="center"> Becoming a maintainer </h2>

To become a maintainer, you just have to be an active repository contributor or helper. We do appreciate every kind of help, so if you don't have enough time to write
a code, it would be also awesome if you can help other contributors understand particular code or concepts. Code reviews are also extremely important part, thus code reviewers
are always welcome. 

<h2 align="center"> Version issues </h2>

If you encounter any version issues while configuring a project on your local machine,
check out <a href="https://github.com/wzslr321/artiver/blob/main/VERSIONS.md"> VERSIONS.md </a>,
to check if yours dependencies versions are up to date. 

In case you spot that project's version dependency isn't updated and new version 
includes breaking changes, please submit it as an issue <a href="https://github.com/wzslr321/ativer/issues/new"> here</a> 
