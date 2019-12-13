CMD=ansible-playbook -i inventory.ini -k site.yml

check: inventory.ini
	$(CMD) --check --diff

apply: inventory.ini
	$(CMD)

