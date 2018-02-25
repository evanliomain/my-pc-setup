# my-pc-setup
A fancy way to fast setup my pc


## Fast install

```sh
sudo apt-get install git
git clone https://github.com/evanliomain/my-pc-setup.git .my-pc-setup
cd .my-pc-setup
./install-all.sh
```

## Install specific software
To install and configure a specific software
```sh
./install.sh my-software
```

To install and configure several specific software
```sh
./install.sh my-software my-software-2 my-software-3
```

## Configure specific software
To just configure a specific software
```sh
./configure.sh my-software

```
To just configure several specific software
```sh
./configure.sh my-software my-software-2 my-software-3
```

## List available software
```sh
./list.sh
```
