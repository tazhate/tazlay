# Copyright 1999-2013 Gentoo Foundation
# Copyright Yandex
# Distributed under the terms of the GNU General Public License v2

EAPI="5"

EGIT_REPO_URI="http://github.com/mamchits/phantom.git"

inherit eutils git-r3 toolchain-funcs

DESCRIPTION="I/O engine with modules"
HOMEPAGE="https://github.com/mamchits/phantom"
SRC_URI=""

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="<sys-devel/binutils-2.23"
RDEPEND="${DEPEND}"

src_compile() {
    emake -R CXX="$(tc-getCXX)"
}

src_install() {
    dobin bin/phantom
    dolib lib/phantom
}
