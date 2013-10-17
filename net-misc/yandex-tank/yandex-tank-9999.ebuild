# Copyright 1999-2013 Gentoo Foundation
# Copyright Yandex
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/net-analyzer/nload/nload-0.7.4.ebuild,v 1.8 2013/08/08 17:02:55 pinkbyte Exp $

EAPI="4"

DESCRIPTION="console application to test websites perfomance"
HOMEPAGE="https://github.com/yandex-load/yandex-tank"
SRC_URI=""

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 arm ~mips ppc x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

src_configure() {
	# --enable-debug  do not strip debugging symbols (default no)
	econf --enable-debug
}

