graph:
	terraform graph | dot -Tpng > graph.png

show-graph:
	open graph.png

ssh-key:
	mkdir ssh; ssh-keygen -t rsa -C "xpdays" -P '' -f ssh/xpdays; chmod 400 ssh/xpdays.pub
