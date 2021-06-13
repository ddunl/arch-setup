
install-dmenu: export REPO = dmenu
install-dwm: export REPO = dwm
install-st: export REPO = st
install-dotfiles: export REPO = dotfiles

install-packages:
	sudo ./install_pkg.sh
	./install_aur.sh

install-dmenu:
	cd .. && \
	git clone http://github.com/dunleavyd14/$(REPO) && \
	cd $(REPO) && \
	sudo $(MAKE) install

install-dwm:
	cd .. && \
	git clone http://github.com/dunleavyd14/$(REPO) && \
	cd $(REPO) && \
	sudo $(MAKE) install

install-st:
	cd .. && \
	git clone http://github.com/dunleavyd14/$(REPO) && \
	cd $(REPO) && \
	sudo $(MAKE) install

install-dotfiles:
	cd .. && \
	mkdir ~/.config && \
	cd ~/.config && \
	git clone http://github.com/dunleavyd14/$(REPO) && \
	cd $(REPO) && \
	$(MAKE) install


