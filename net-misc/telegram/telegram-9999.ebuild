# Copyright 1999-2013 Gentoo Foundation
# Copyright Yandex
# Distributed under the terms of the GNU General Public License v2

EAPI="5"

EGIT_REPO_URI="https://github.com/vysheng/tg.git"

inherit eutils git-r3 toolchain-funcs

DESCRIPTION="Command-line interface for Telegram."
HOMEPAGE="https://github.com/vysheng/tg"
SRC_URI=""

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="sys-libs/readline
	dev-libs/libconfig"
RDEPEND="${DEPEND}"

src_compile() {
    emake
}

src_install() {
    dobin telegram
}
