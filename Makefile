CMD=ansible-playbook -i inventory.ini -k 

check: inventory.ini
	$(CMD) site.yml --check --diff

apply: inventory.ini
	$(CMD) site.yml

upgrade: inventory.ini
	$(CMD) upgrade.yml
