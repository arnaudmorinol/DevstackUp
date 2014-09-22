# Devstack with Vagrant

## Features

* 5GB Vagrant VM
* Horizon forwarded to `localhost:8080`
* Verbose mode and logging enabled

## Usage

### Step 1: [Install Vagrant](http://docs.vagrantup.com/v2/installation/index.html)

### Step 2: `git clone git://github.com/arnaudmorinol/DevstackUp.git`

### Step 3 Vagrant up: `cd DevstackUp; vagrant up`

### Step 4: Vagrant ssh: `vagrant ssh`

#### Tests:

* `~/devstack/exercise.sh`
* `cd /opt/stack/tempest ;  nosetests --attr=type=smoke tempest`

#### Notes:

* If you have another box named `devstack-arnaud`, you must remove it first with `vagrant box remove devstack-arnaud`
* To build, vagrant box that has most of the devstack dependencies pre-installed:
  * `cd build-box`
  * `./build.sh`
