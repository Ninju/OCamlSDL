#
# OCamlSDL - An ML interface to the SDL library
# Copyright (C) 1999  Frederic Brunel
#
# This library is free software; you can redistribute it and/or
# modify it under the terms of the GNU Lesser General Public
# License as published by the Free Software Foundation; either
# version 2 of the License, or (at your option) any later version.
#
# This library is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
# Lesser General Public License for more details.
#
# You should have received a copy of the GNU Lesser General Public
# License along with this library; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
#

# $Id: Makefile,v 1.7 2002/06/24 08:51:52 oliv__a Exp $

all:
	$(MAKE) -C src

test: all
	$(MAKE) -C samples

clean:
	$(MAKE) -C src clean
	$(MAKE) -C samples clean
	$(MAKE) -C bin clean

distclean:
	$(MAKE) -C src distclean
	$(MAKE) -C samples distclean
	$(MAKE) -C bin distclean
	rm -f config.cache config.log config.status makefile.toplevel

install:
	$(MAKE) -C src install
	$(MAKE) -C bin install

uninstall:
	$(MAKE) -C src uninstall
	$(MAKE) -C bin uninstall

makefile.toplevel : configure ; $(error "please run ./configure")
configure : configure.in
	autoconf
-include makefile.toplevel

.PHONY: all test clean distclean install uninstall
