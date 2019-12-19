# ansible-centos-webserver-hardened

Ansible recipe for building an hardened webserver on centos

## Common

First, you need to pull the whole repository.

If you already have your github ssh keys configured:
```
$ git submodule init && git submodule update
```

Else, if your do not have your github ssh keys configured:
```
$ git pull https://github.com/0b11stan/ansible-role-debian-apache.git roles/apache
$ git pull git@github.com:0b11stan/ansible-role-certbot.git roles/certbot
```

Then, edit `roles/apache/vars/main.yml` and `roles/certbot/vars/main.yml` for setting your preferences.
You should see `roles/apache/README.md` and `roles/certbot/README.md` for more informations.

Finally, set your preferneces in the `inventory.ini` file and play the recipe:
```
$ ansible-playbook -i inventory.ini -k site.yml
```

## Upgrades

For system upgrades, you can choose between automatic upgrades by enableing it in your inventory file and manual upgrades using the following command:
```
$ ansible-playbook -i inventory.ini -k upgrade.yml
