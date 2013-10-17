# Copyright 1999-2013 Gentoo Foundation
# Copyright Yandex
# Distributed under the terms of the GNU General Public License v2

EAPI="4"

EGIT_REPO_URI="http://github.com/mamchits/phantom.git"

inherit eutils git-2

DESCRIPTION="I/O engine with modules"
HOMEPAGE="https://github.com/mamchits/phantom"
SRC_URI=""

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"


src_install() {
    emake -R DESTDIR="${D}" install
}
