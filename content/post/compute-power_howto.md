## How to use *arco* and *braun*

### Basics

There are two computing servers (i.e. *arco* and *braun*) in our group, basic information about them are:

- *arco*
  - CPU: 2 x [Intel Xeon CPU E5-2630 0 @ 2.30GHz](http://ark.intel.com/products/64593/Intel-Xeon-Processor-E5-2630-15M-Cache-2_30-GHz-7_20-GTs-Intel-QPI), 2 x 6 cores with Hyper-Threading
  - GPU: 2 x [NVIDIA Tesla K40c](https://www.nvidia.com/content/PDF/kepler/Tesla-K40-Active-Board-Spec-BD-06949-001_v03.pdf), 2 x 12 GB GDDR5 on-board memory
  - RAM: 64 GB
  - Storage: See [Shared Storage](#Shared-Storage) 
  - OS: [Ubuntu LTS](https://wiki.ubuntu.com/LTS) 
- *braun*
  - CPU: 2 [Intel Xeon CPU E5-2630 v2 @ 2.60GHz](http://ark.intel.com/products/75790/Intel-Xeon-Processor-E5-2630-v2-15M-Cache-2_60-GHz), 2x6 cores with Hyper-Threading
  - GPU: 2 x [NVIDIA Tesla K40c](https://www.nvidia.com/content/PDF/kepler/Tesla-K40-Active-Board-Spec-BD-06949-001_v03.pdf) + [NVIDIA Quadro K600](http://www.nvidia.com/content/pdf/data-sheet/nv-ds-quadro-k600-us.pdf), 2 x 12 GB GDDR5 (K40c) + 1 GB DDR3 (K600) on-board memory
  - RAM: 128 GB
  - Storage: See [Shared Storage](#Shared-Storage) 
  - OS: [Ubuntu LTS](https://wiki.ubuntu.com/LTS) 

### Shared Storage

There are SSDs installed in both *arco* and *braun*, you are not recommend to use them due to their small capacities (except source code), instead, large datasets are recommended to be stored in the following shared storage:

- /data: ?


- /data1: ?
- /data2: ? TB, hosted on NFS server *zion*, automatic back-up?
- /data3: ? TB, hosted on NFS server *zion*, automatic back-up?
- /data4: ~20 TB, hosted on NFS server *zion*, automatic back-up?
- /localdata: ~ 8.2 TB hosted on *arco*, ~ 7.3 TB hosted on *braun*, NO automatic back-up?

For Python users, it is recommended that you get your own [Anaconda](https://www.continuum.io/anaconda-overview) or [Miniconda](https://conda.io/miniconda.html) distribution and install it in /localdata. 

### Usage

Both servers can be accessed by their hostnames (i.e. *arco* and *braun*) if you are connected to the ANU network, otherwise, you have to access them through [ssh tunnel](https://en.wikipedia.org/wiki/Tunneling_protocol#Secure_Shell_tunneling) via two CECS servers: 

- koves.cecs.anu.edu.au
- kinross.cecs.anu.edu.au

You can access them using your ANU id and password, a nice tutorial on setting up ssh tunnel is available [here](http://sshmenu.sourceforge.net/articles/transparent-mulithop.html), you may also want to [login without typing password](http://www.linuxproblem.org/art_9.html). 

### Misc

If your computing requirements are beyond the capabilities of both *arco* and *braun*, you may consider using [NCI](http://nci.org.au/) or [NECTAR](https://nectar.org.au/).

You can register as a new user of NCI by following instructions [here](http://nci.org.au/access/user-registration/register-new-user/) using your ANU email address and connect it with project **v89**. There is also [a nice user guide](https://opus.nci.org.au/display/Help/Raijin+User+Guide). 

**How to register NECTAR?** 