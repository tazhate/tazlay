# Copyright 1999-2013 Gentoo Foundation
# Copyright Yandex
# Distributed under the terms of the GNU General Public License v2

EAPI="4"
SUPPORT_PYTHON_ABIS="1"
RESTRICT_PYTHON_ABIS="3.*"
PYTHON_DEPEND="2"

DESCRIPTION="Console application to test websites perfomance"
HOMEPAGE="https://github.com/yandex-load/yandex-tank"
SRC_URI=""

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="dev-python/lxml
	dev-python/ipaddr
	dev-python/progressbar
	dev-python/psutil
	dev-python/sqlalchemy
	dev-python/mysql-python"
RDEPEND="${DEPEND}"


src_configure() {
	# --enable-debug  do not strip debugging symbols (default no)
	econf --enable-debug
}

