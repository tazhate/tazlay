# Copyright 1999-2013 Gentoo Foundation
# Copyright Yandex
# Distributed under the terms of the GNU General Public License v2

EAPI="5"

EGIT_REPO_URI="https://github.com/yandex-load/yandex-tank.git"
PYTHON_COMPAT=( python2_{6,7} )

inherit bash-completion-r1 git-r3 python-r1

DESCRIPTION="Console application to test websites perfomance"
HOMEPAGE="https://github.com/yandex-load/yandex-tank"
SRC_URI=""

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""

RDEPEND="${PYTHON_DEPS}
	dev-python/lxml[${PYTHON_USEDEP}]
	dev-python/ipaddr[${PYTHON_USEDEP}]
	dev-python/progressbar[${PYTHON_USEDEP}]
	dev-python/psutil[${PYTHON_USEDEP}]
	dev-python/sqlalchemy[${PYTHON_USEDEP}]"
DEPEND="${RDEPEND}"

python_install() {
	python_domodule Tank
	python_domodule tankcore.py
	python_doscript tank.py
}

src_install() {
	python_foreach_impl python_install
	dobashcomp *.completion
	dodoc README.md
}
