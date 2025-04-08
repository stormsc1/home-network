check-ha-config-valid:
	docker exec homeassistant python -m homeassistant --script check_config --config ./ha-config