# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit go-module

DESCRIPTION="A lightweight, secure, and feature-rich Discord terminal client."
HOMEPAGE="https://github.com/ayn2op/discordo"
LICENSE="MIT"
SLOT="0"
IUSE=""

if [[ "${PV}" == "9999" ]]; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/ayn2op/discordo.git"
else
	KEYWORDS="~amd64"
	SRC_URI="https://github.com/Renkin42/discordo/archive/${PV}.tar.gz -> ${P}.tar.gz"
fi

BDEPEND=">=dev-lang/go-1.22.1"

src_unpack() {
	if [[ "${PV}" == "9999" ]]; then
		git-r3_src_unpack
		go-module_live_vendor
	else
		default
	fi
}

src_compile() {
    ego build
}

src_install() {
    dobin discordo

    default
}
