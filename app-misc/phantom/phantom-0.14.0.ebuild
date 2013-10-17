# Copyright 1999-2013 Gentoo Foundation
# Copyright Yandex
# Distributed under the terms of the GNU General Public License v2

EAPI="4"

DESCRIPTION="I/o engine with modules"
HOMEPAGE="https://github.com/mamchits/phantom"
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

