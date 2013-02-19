# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-java/java-config/java-config-2.1.12-r1.ebuild,v 1.1 2012/12/05 19:05:48 sera Exp $

EAPI="5"

# jython depends on java-config, so don't add it or things will break
PYTHON_COMPAT=( python{2_6,2_7,3_1,3_2,3_3} pypy{1_8,1_9} )

inherit distutils-r1

DESCRIPTION="Java environment configuration query tool"
HOMEPAGE="http://www.gentoo.org/proj/en/java/"
SRC_URI="https://dev.gentoo.org/~sera/distfiles/${P}.tar.bz2"

LICENSE="GPL-2"
SLOT="2"
KEYWORDS="~amd64"
IUSE=""

# baselayout-java is only a dep till it can be added to eclass.
RDEPEND="
	>=dev-java/java-config-wrapper-0.15
	sys-apps/baselayout-java
	sys-apps/portage"

python_test() {
	esetup.py test || die
}