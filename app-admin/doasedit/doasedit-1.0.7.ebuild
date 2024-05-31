# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Enable doers to edit non-user-editable files with an unprivileged editor"
HOMEPAGE="https://codeberg.org/TotallyLeGIT/doasedit"
SRC_URI="https://codeberg.org/TotallyLeGIT/doasedit/archive/${PV}.tar.gz -> ${P}.tar.gz"
S="${WORKDIR}/doasedit"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="app-admin/doas"
RDEPEND="${DEPEND}"
BDEPEND=""

src_install() {
	dobin doasedit
}
