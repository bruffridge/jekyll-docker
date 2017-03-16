# jekyll-docker

Build and serve a Jekyll site in a docker container.

## Setup

1. Install [Docker](https://www.docker.com/)
1. Clone or download this repo into `jekyll-docker` on your machine.
1. Have a Jekyll site on your computer or clone this [NASA Web Design Standards starter site](https://github.com/bruffridge/jekyll-nasawds-demo) to your machine. Your jekyll site will need to have a package.json with a `start` script that runs `jekyll serve` [like this](https://github.com/bruffridge/jekyll-nasawds-demo/blob/master/package.json#L6)
1. Open a bash terminal and `cd` to `jekyll-docker`
1. Build a docker image named `jekyll-docker` by running this command: `docker build -t jekyll-docker .`
1. Build and run the jekyll site within a docker container named `my_jekyll_site` (feel free to rename). Also you can choose a different name for `jekyll-site` if you desire: `docker run -it --name my_jekyll_site -p 127.0.0.1:4000:4000 -v /path/to/my/jekyll-site:/apps/jekyll-site jekyll-docker start jekyll-site`
1. Access your site at 127.0.0.1:4000 in a browser. Make changes to your site source files and the jekyll site running on http://127.0.0.1:4000/ will be updated automatically. Just refresh your browser to see the changes.
1. `Ctrl+C` to stop the server
1. Next time you want to start the server: `docker start -ai `docker ps -a -q -f "name=my_jekyll_site"``

## Other helpful docker commands

### Stop latest container
docker stop `docker ps -q -l`

### Remove all stopped containers
docker rm $(docker ps -a -q)
