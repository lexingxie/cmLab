# CM Lab Guide to Computing

## Rule #1
Be considerate to others who share the same computing environment. 

## Basics

There are three computing servers (i.e. `dijkstra`, `cray` and `braun`) in our group, basic information about them are:

- `dijkstra` (deploying 2018-08)
- `cray` (deployed 2018-08)
  - CPU: 2 Intel(R) Xeon(R) Silver 4114 CPU @ 2.20GHz, 2x10 cores with Hyper-Threading (appears as 40 cores on htop)
  - GPU: 2 x [NVIDIA Tesla K40c](https://www.nvidia.com/content/PDF/kepler/Tesla-K40-Active-Board-Spec-BD-06949-001_v03.pdf) (old GPU from arco) 
  - RAM: ?? (128 GB)
  
- `braun`
  - CPU: 2 [Intel Xeon CPU E5-2630 v2 @ 2.60GHz](http://ark.intel.com/products/75790/Intel-Xeon-Processor-E5-2630-v2-15M-Cache-2_60-GHz), 2x6 cores with Hyper-Threading
  - GPU: 2 x [NVIDIA Tesla K40c](https://www.nvidia.com/content/PDF/kepler/Tesla-K40-Active-Board-Spec-BD-06949-001_v03.pdf) + [NVIDIA Quadro K600](http://www.nvidia.com/content/pdf/data-sheet/nv-ds-quadro-k600-us.pdf), 2 x 12 GB GDDR5 (K40c) + 1 GB DDR3 (K600) on-board memory
  - RAM: 128 GB
  - Storage: See [Shared Storage](#Shared-Storage) 
  - OS: [Ubuntu LTS](https://wiki.ubuntu.com/LTS) 

- `arco`(died in 2018-07)
  - CPU: 2 x [Intel Xeon CPU E5-2630 0 @ 2.30GHz](http://ark.intel.com/products/64593/Intel-Xeon-Processor-E5-2630-15M-Cache-2_30-GHz-7_20-GTs-Intel-QPI), 2 x 6 cores with Hyper-Threading
  - GPU: 2 x [NVIDIA Tesla K40c](https://www.nvidia.com/content/PDF/kepler/Tesla-K40-Active-Board-Spec-BD-06949-001_v03.pdf), 2 x 12 GB GDDR5 on-board memory
  - RAM: 64 GB
  - Storage: See [Shared Storage](#Shared-Storage) 
  - OS: [Ubuntu LTS](https://wiki.ubuntu.com/LTS) 

*Access to `arco` `braun`* is managed by CECS LDAP. That is to say, email helpdesk@cecs and cc-Lexing, request to be added to the "cmlab" linux group.

## Disk space

There are a few types of storage space available:

* There are SSDs installed in both `arco` and `braun` as /home or /, you are not recommend to use them due to their small capacities (except source code). 

* Static, backed up storage. These are intended for datasets and other persistent storage. Such as results to reproduce one of your papers, or critical processed data that will be very expensive to regenerate. Because of the mirrored backup and RAID redundancy, they are more expensive to obtain and maintain -- at a price of about 2.5TB per each TB we can use. 
  
  - /data: (doesn't exist)
  - /data1: (doesn't exist)
  - /data2: 22 TB, hosted on NFS server `zion`, automatically mirrored nightly 
  - /data3: 11 TB, hosted on NFS server `zion`, automatically mirrored nightly 
  - /data4: 22 TB, hosted on NFS server `zion`, automatic back-up NOT YET UP

* Local scratch space. These should host experiment dumps, temporary storage, and others. 
  - /localdata: ~ 8.2 TB hosted on `arco`, ~ 7.3 TB hosted on `braun`, NO BACKUP

* NCI storage -- there are ~17TB available on /gdata/, see below for instructions.

## Code hosting and release

We use github, bitbucket, or ANU gitlab for code development and ongoing projects. 

For better publicity and visibility, we will release all our public code via an organisation github account, [cmlab](https://github.com/computationalmedia).

  - send your github username/useremail to swapnil
  - accept the inivation and join as public member(this won't affect your github account in any way)

For future releases:

  - create a new repository under the "organization" 
  - add your collaborators to it and start pushing code/data 

## Software 

You can install software in /localdata using [Linuxbrew](http://linuxbrew.sh/) (no root permission required).
For system-wide software (e.g. GPU drivers), voice on #compute-power and sudoers will help install. 

For Python users, it is recommended that you get your own [Anaconda](https://www.continuum.io/anaconda-overview) or [Miniconda](https://conda.io/miniconda.html) distribution and install it in /localdata. 

## Usage

Both servers can be accessed by their hostnames (i.e. `arco` and `braun`) if you are connected to the ANU network, otherwise, you have to access them through [ssh tunnel](https://en.wikipedia.org/wiki/Tunneling_protocol#Secure_Shell_tunneling) via two CECS servers: 

- koves.cecs.anu.edu.au
- kinross.cecs.anu.edu.au

You can access them using your ANU id and password, a nice tutorial on setting up ssh tunnel is available [here](http://sshmenu.sourceforge.net/articles/transparent-mulithop.html), you may also want to [login without typing password](http://www.linuxproblem.org/art_9.html). 

### Usage from VPN

If you want to access computational resources of CECS from your network outside CECS, you can request ans ask for VPN access. To request VPN access, [follow these instructions](https://cecs.anu.edu.au/staff/cecs-it-group/cecs-vpn).

After connecting to VPN, arco/braun are accessible by IP from your laptop, but not with hostname, i.e. with `braun` or `arco`. If you want to access from hostname, keep them in your `/etc/hosts` file.

## Nectar and NCI
[NCI](http://nci.org.au/) or [NECTAR](https://nectar.org.au/) are local high-performance computing and cloud computing services that are available to group members. They are especially handy when your computing requirements grows beyond the capabilities of both `arco` and `braun`. 

* NCI is a high-performance computing cluster, we have cpu hour quota (typically tens of thousands per quarter) for data- and cpu- intensive parrallel jobs. 
  You can register as a new user of NCI by following instructions [here](http://nci.org.au/access/user-registration/register-new-user/) using your ANU email address and connect it with project **v89**. There is also [a nice user guide](https://opus.nci.org.au/display/Help/Raijin+User+Guide). 

* NECTAR research cloud hosts virtual machines.  
  We have an allocation of several dozen VMs, there's usually a few free at any given time. These are for long-running jobs, or jobs needing dedicated environment. You can first login with your ANU credentials at https://dashboard.rc.nectar.org.au/auth/login/?next=/, then ask to be added to the group project. 
  If the resource requirement is small enough, then just use a test instance -- 2CPU VM, every user gets that automatically for free.


## Misc

### Helpful shortcuts for fast accessing arco/braun
1. Passwordless ssh: Generate ssh key (if it doesn't exists inside your `~/.ssh/`) using command `ssh-keygen -t rsa` and copy the content of `~/.ssh/id_rsa.pub` to file `~/.ssh/authorized_keys` of braun/arco. Then you will be able to ssh without password.
2. ssh without username: Normally, when you ssh, you use command `ssh u1234567@braun`, but if you want to fast ssh with just `ssh braun` (without username), put these in your `~/.ssh/config`:
```
Host braun
 User u1234567
Host arco
 User u1234567
```
3. ssh via cpu1/cpu2: You can do a two step ssh to arco/braun by first doing ssh to cpu1/cpu2 servers from outside network, and then doing ssh to arco/braun. You can combine this two step method to a single command by using follwing function. Add this function to `~/.bash_profile` in your laptop/external computer.

```
export ANU_ID=u1234567
function sshq() {
     echo "connecting via proxy cpu$2"
     ssh -t $ANU_ID@cpu$2.cecs.anu.edu.au ssh -t $1 # ${@:3}
}
```

After you add these lines to your `~/.bash_profile`, you can do `sshq braun 1` to ssh via cpu1 or `sshq arco 2` to ssh via cpu2 to the arco/braun.

### Using iPython notebook remotely

(adapted from instructions here
http://wisdomthroughknowledge.blogspot.com.au/2012/07/accessing-ipython-notebook-remotely.html)

* on arco: `ipython notebook --no-browser --port=7100`
* on local machine: `ssh -N -f -L localhost:8071:localhost:7100 u1234567@arco.cecs.anu.edu.au`

* use "ps aux | grep ssh” to find and kill zombie ssh sessions



